#!/usr/bin/env python3
"""Shell preflight checker for safe command patterns.

Profiles:
- bash
- gitbash
- powershell
- azureshell (bash-compatible)
- cmd
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import dataclass, asdict
from typing import List


@dataclass
class Finding:
    severity: str  # ERROR|WARN
    rule_id: str
    shell: str
    message: str
    line: int
    command: str


REMEDIATION_BY_RULE = {
    "PF_QUOTE_UNBALANCED": {
        "reason": "Command has unbalanced quotes and cannot be parsed safely.",
        "next": "Balance single/double quotes and rerun preflight.",
    },
    "PF_BACKTICK_SUBSTITUTION_RISK": {
        "reason": "Backtick substitution detected outside safe quoting.",
        "next": "Replace backticks with single-quoted literals or explicit arguments.",
    },
    "PF_COMMAND_SUBSTITUTION_PRESENT": {
        "reason": "Command substitution '$(' is present and may hide side effects.",
        "next": "Use direct literal/path arguments where possible; keep substitution only if required.",
    },
    "PF_DANGLING_BACKTICK": {
        "reason": "Dangling PowerShell backtick can change parser behavior.",
        "next": "Remove trailing backtick or complete the escaped expression explicitly.",
    },
    "PF_PWSH_VAR_COLON_BRACES_REQUIRED": {
        "reason": "PowerShell variable followed by ':' may be parsed incorrectly.",
        "next": "Rewrite as '${var}:...' unless a scope-qualified variable is intended.",
    },
    "PF_CMD_META_UNQUOTED": {
        "reason": "Potentially unsafe cmd meta characters detected outside quotes.",
        "next": "Quote or escape meta characters (&, |, <, >) and rerun preflight.",
    },
}


def has_unbalanced_quotes(line: str) -> bool:
    single = False
    double = False
    esc = False
    for ch in line:
        if esc:
            esc = False
            continue
        if ch == "\\":
            esc = True
            continue
        if ch == "'" and not double:
            single = not single
            continue
        if ch == '"' and not single:
            double = not double
            continue
    return single or double


def bash_like_findings(shell: str, line: str, lineno: int) -> List[Finding]:
    findings: List[Finding] = []
    if has_unbalanced_quotes(line):
        findings.append(
            Finding(
                severity="ERROR",
                rule_id="PF_QUOTE_UNBALANCED",
                shell=shell,
                message="Unbalanced quotes.",
                line=lineno,
                command=line,
            )
        )

    single = False
    double = False
    esc = False
    for i, ch in enumerate(line):
        if esc:
            esc = False
            continue
        if ch == "\\":
            esc = True
            continue
        if ch == "'" and not double:
            single = not single
            continue
        if ch == '"' and not single:
            double = not double
            continue
        if ch == "`":
            if not single and not esc:
                findings.append(
                    Finding(
                        severity="ERROR",
                        rule_id="PF_BACKTICK_SUBSTITUTION_RISK",
                        shell=shell,
                        message=(
                            "Backtick detected outside single quotes. "
                            "Use single quotes or escape backticks."
                        ),
                        line=lineno,
                        command=line,
                    )
                )
                break
        if line[i : i + 2] == "$(":
            findings.append(
                Finding(
                    severity="WARN",
                    rule_id="PF_COMMAND_SUBSTITUTION_PRESENT",
                    shell=shell,
                    message="Command substitution '$(' detected; verify necessity.",
                    line=lineno,
                    command=line,
                )
            )
            break
    return findings


def powershell_findings(line: str, lineno: int) -> List[Finding]:
    findings: List[Finding] = []
    if has_unbalanced_quotes(line):
        findings.append(
            Finding(
                severity="ERROR",
                rule_id="PF_QUOTE_UNBALANCED",
                shell="powershell",
                message="Unbalanced quotes.",
                line=lineno,
                command=line,
            )
        )

    # Backtick is PowerShell escape char; dangling or suspicious backticks are risky.
    if re.search(r"`\s*$", line):
        findings.append(
            Finding(
                severity="WARN",
                rule_id="PF_DANGLING_BACKTICK",
                shell="powershell",
                message="Dangling trailing backtick can alter command parsing.",
                line=lineno,
                command=line,
            )
        )

    # Common parser pitfall: "$var:..." inside interpolated strings should
    # usually be "${var}:..." unless using known scope-qualified variables.
    # Example failure class: "$me:(OI)(CI)(RX)" -> parser error.
    scope_safe = {"env", "global", "script", "local", "private", "using"}
    for match in re.finditer(r"\$([A-Za-z_][A-Za-z0-9_]*)\s*:", line):
        var_name = match.group(1)
        if var_name.lower() not in scope_safe:
            findings.append(
                Finding(
                    severity="ERROR",
                    rule_id="PF_PWSH_VAR_COLON_BRACES_REQUIRED",
                    shell="powershell",
                    message=(
                        "Variable followed by ':' may require braces "
                        "(use '${var}:...' form)."
                    ),
                    line=lineno,
                    command=line,
                )
            )
            break
    return findings


def cmd_findings(line: str, lineno: int) -> List[Finding]:
    findings: List[Finding] = []
    if line.count('"') % 2 != 0:
        findings.append(
            Finding(
                severity="ERROR",
                rule_id="PF_QUOTE_UNBALANCED",
                shell="cmd",
                message="Unbalanced double quotes.",
                line=lineno,
                command=line,
            )
        )
    if re.search(r'(^|[^"^])[&|<>]', line):
        findings.append(
            Finding(
                severity="WARN",
                rule_id="PF_CMD_META_UNQUOTED",
                shell="cmd",
                message="Potentially unsafe cmd meta character (&, |, <, >) outside quotes.",
                line=lineno,
                command=line,
            )
        )
    return findings


def collect_commands(args: argparse.Namespace) -> List[str]:
    if args.command:
        return [args.command]
    if args.file:
        with open(args.file, "r", encoding="utf-8") as f:
            lines = [ln.rstrip("\n") for ln in f.readlines()]
        return [ln for ln in lines if ln.strip() and not ln.lstrip().startswith("#")]
    return []


def run_checks(shell: str, commands: List[str]) -> List[Finding]:
    findings: List[Finding] = []
    for idx, cmd in enumerate(commands, start=1):
        if shell in {"bash", "gitbash", "azureshell"}:
            findings.extend(bash_like_findings(shell, cmd, idx))
        elif shell == "powershell":
            findings.extend(powershell_findings(cmd, idx))
        elif shell == "cmd":
            findings.extend(cmd_findings(cmd, idx))
    return findings


def build_gate_guidance(findings: List[Finding]) -> dict:
    errors = [f for f in findings if f.severity == "ERROR"]
    warns = [f for f in findings if f.severity == "WARN"]

    if errors:
        decision = "BLOCK"
        reason_code = errors[0].rule_id
        blocked_rules = sorted({f.rule_id for f in errors})
    elif warns:
        decision = "HOLD"
        reason_code = warns[0].rule_id
        blocked_rules = []
    else:
        decision = "OPEN"
        reason_code = "NONE"
        blocked_rules = []

    next_actions: List[str] = []
    for f in (errors if errors else warns):
        rule = REMEDIATION_BY_RULE.get(f.rule_id)
        if rule:
            next_actions.append(f"[{f.rule_id}] {rule['next']}")
        else:
            next_actions.append(f"[{f.rule_id}] Review command composition and rerun preflight.")

    # Keep list deterministic and concise.
    next_actions = list(dict.fromkeys(next_actions))

    explanation_parts: List[str] = []
    for rule_id in sorted({f.rule_id for f in (errors if errors else warns)}):
        rule = REMEDIATION_BY_RULE.get(rule_id)
        if rule:
            explanation_parts.append(f"{rule_id}: {rule['reason']}")
        else:
            explanation_parts.append(f"{rule_id}: rule triggered; inspect findings for details.")

    return {
        "decision": decision,
        "reason_code": reason_code,
        "blocked_by_rules": blocked_rules,
        "explanation": " ".join(explanation_parts) if explanation_parts else "No blocking conditions detected.",
        "next_actions": next_actions,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Shell command preflight checker.")
    parser.add_argument(
        "--shell",
        required=True,
        choices=["bash", "gitbash", "powershell", "azureshell", "cmd"],
        help="Target shell profile.",
    )
    parser.add_argument("--command", help="Single command string to validate.")
    parser.add_argument("--file", help="Path to file with commands (one per line).")
    parser.add_argument(
        "--format",
        choices=["text", "json"],
        default="text",
        help="Output format.",
    )
    args = parser.parse_args()

    commands = collect_commands(args)
    if not commands:
        print("No command input provided. Use --command or --file.", file=sys.stderr)
        return 2

    findings = run_checks(args.shell, commands)
    errors = [f for f in findings if f.severity == "ERROR"]
    warns = [f for f in findings if f.severity == "WARN"]
    guidance = build_gate_guidance(findings)

    result = {
        "shell": args.shell,
        "commands_checked": len(commands),
        "error_count": len(errors),
        "warn_count": len(warns),
        "findings": [asdict(f) for f in findings],
        "safe_for_execution": len(errors) == 0,
        "decision": guidance["decision"],
        "reason_code": guidance["reason_code"],
        "blocked_by_rules": guidance["blocked_by_rules"],
        "explanation": guidance["explanation"],
        "next_actions": guidance["next_actions"],
    }

    if args.format == "json":
        print(json.dumps(result, indent=2, ensure_ascii=True))
    else:
        print(
            f"shell={args.shell} checked={len(commands)} errors={len(errors)} warns={len(warns)} "
            f"safe={str(len(errors) == 0).lower()}"
        )
        print(f"decision={guidance['decision']} reason_code={guidance['reason_code']}")
        print(f"explanation={guidance['explanation']}")
        for action in guidance["next_actions"]:
            print(f"next_action={action}")
        for f in findings:
            print(f"[{f.severity}] {f.rule_id} line={f.line}: {f.message}")

    return 0 if len(errors) == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
