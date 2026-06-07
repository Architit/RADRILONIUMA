#!/usr/bin/env bash
# ==============================================================================
# PROTOCOL: ARK_LICENSING_INIT (RECONCILED)
# DATE: 2026-06-07
# ARCHITECT: Halidrad
# TARGET: RADRILONIUMA / TRIANIUMA ARK REPOSITORIES
# ==============================================================================

# Define Paths and Metadata
TIMESTAMP="2026-06-07"
COPYRIGHT_HEADER="Copyright (c) $TIMESTAMP RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved."

# Licensing Content
LICENSE_COMMUNITY=$(cat <<'EOF'
AGPLv3 Community License Agreement
----------------------------------
This software is provided for individuals and community research under the 
terms of the AGPLv3. Any derivative work serving users over a network 
must disclose its source code.
EOF
)

LICENSE_ENTERPRISE_NOTICE=$(cat <<'EOF'
ENTERPRISE / CORPORATE NOTICE
-----------------------------
For corporate, governmental, or commercial utilization, this software is 
subject to the TRIANIUMA ENTERPRISE AGREEMENT. 
Usage without a valid Enterprise Key constitutes a violation of the 
Trianiuma Kingdom IP protocols. 
Contact: contact@trianiuma.ark
EOF
)

# Initialize
echo "[INFO] Initializing Licensing Epoch for Ark Repositories..."

# Find git repositories under LAM_CORE
TARGET_FILTER="$1"

find /home/architit/LAM_CORE -maxdepth 2 -name ".git" -type d | while read -r git_path; do
    repo_path=$(dirname "$git_path")
    repo_name=$(basename "$repo_path")
    
    if [ -n "$TARGET_FILTER" ] && [ "$repo_name" != "$TARGET_FILTER" ] && [ "$repo_path" != "$TARGET_FILTER" ]; then
        continue
    fi

    echo "[DEBUG] Processing: $repo_path"

    # 1. Inject/Update LICENSE.md
    echo "$LICENSE_COMMUNITY" > "$repo_path/LICENSE.md"
    echo -e "\n\n$LICENSE_ENTERPRISE_NOTICE" >> "$repo_path/LICENSE.md"

    # 2. Inject NOTICE.md for protocol transparency
    echo "Protocol: Sovereign Tree / M48" > "$repo_path/NOTICE.md"
    echo "Metabolic Status: PROTECTED" >> "$repo_path/NOTICE.md"

    # 3. Apply Copyright Headers to source files (Python/TS/Go)
    python3 -c '
import os, sys
header = sys.argv[1]
repo_path = sys.argv[2]
extensions = (".py", ".ts", ".go")
exclude_dirs = {".git", ".venv", "venv", "node_modules", "__pycache__", ".pytest_cache"}

for root, dirs, files in os.walk(repo_path):
    dirs[:] = [d for d in dirs if d not in exclude_dirs]
    for file in files:
        if file.endswith(extensions):
            file_path = os.path.join(root, file)
            try:
                with open(file_path, "r", encoding="utf-8") as f:
                    content = f.read()
            except Exception as e:
                print(f"[WARN] Failed to read {file_path}: {e}")
                continue

            if "RADRILONIUMA / TRIANIUMA Kingdom" in content:
                continue

            if file.endswith(".py"):
                commented_header = f"# {header}\n"
            else:
                commented_header = f"// {header}\n"

            lines = content.splitlines(keepends=True)
            if lines and lines[0].startswith("#!"):
                if len(lines) > 1 and "RADRILONIUMA / TRIANIUMA Kingdom" in lines[1]:
                    continue
                lines.insert(1, commented_header)
            else:
                lines.insert(0, commented_header)

            try:
                with open(file_path, "w", encoding="utf-8") as f:
                    f.writelines(lines)
                print(f"[DEBUG] Injected header into: {file_path}")
            except Exception as e:
                print(f"[WARN] Failed to write {file_path}: {e}")
' "$COPYRIGHT_HEADER" "$repo_path"

    # 4. Initialize BEASTSPOT monitoring for this repo
    (cd "$repo_path" && git config --add ark.protection enabled)
    
    echo "[SUCCESS] $repo_path secured."
done

echo "[METABOLIC_STREAM] Licensing update completed. Epoch $TIMESTAMP verified."
