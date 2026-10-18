#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • ECSS GLOBAL DEDUPLICATION & REDUNDANT COPIES PURGE ENGINE (528 Hz)
================================================================================
Scans all Ecosystem Storage Substrates (Drives C, D, E, F, Google Drive, OneDrive, GitHub).
Computes exact SHA-256 content hashes, identifies byte-for-byte duplicate copies,
strictly preserves one authoritative canonical master (P0 Safety Contract), and
safely purges redundant duplicates to reclaim clean storage.

Location: /root/RADRILONIUMA/scripts/global/ecss_global_deduplication_engine.py
"""

import os
import sys
import json
import hashlib
import argparse
from pathlib import Path
from collections import defaultdict
from datetime import datetime, timezone
from typing import Dict, Any, List, Tuple

REPO_ROOT = Path("/root/RADRILONIUMA")
CHRONOLOG_DIR = REPO_ROOT / "chronolog"
CHRONOLOG_DIR.mkdir(parents=True, exist_ok=True)
DEDUP_REPORT = CHRONOLOG_DIR / "ecss_dedup_report.json"

# Targets to scan across local drives and clouds
SCAN_TARGETS = [
    Path("/mnt/e/google drive"),
    Path("/mnt/d/google drive"),
    Path("/mnt/c/Users/BushM/OneDrive"),
    Path("/mnt/c/setup"),
    Path("/mnt/c/Users/BushM/Desktop"),
    Path("/mnt/c/Users/BushM/Downloads"),
    Path("/mnt/c/Users/BushM/Pictures")
]

# Strict P0 Safety Inviolable Paths - NEVER DELETE
PROTECTED_PREFIXES = [
    "/mnt/f/ATESIRT_VAULT_ARCHIVE",
    "/root/RADRILONIUMA/.git",
    "/root/RADRILONIUMA/contract",
    "/root/RADRILONIUMA/venv"
]


def compute_sha256(filepath: Path, chunk_size: int = 65536) -> str:
    """Computes SHA-256 hash of a file."""
    h = hashlib.sha256()
    try:
        with open(filepath, "rb") as f:
            while chunk := f.read(chunk_size):
                h.update(chunk)
        return h.hexdigest()
    except (PermissionError, OSError):
        return ""


class ECSSGlobalDeduplicator:
    def __init__(self, targets: List[Path] = None):
        self.targets = [t for t in (targets or SCAN_TARGETS) if t.exists()]

    def is_protected(self, path: Path) -> bool:
        sp = str(path.resolve())
        return any(sp.startswith(p) for p in PROTECTED_PREFIXES)

    def scan_and_identify(self) -> Dict[str, Any]:
        """Scans targets, groups by size, hashes matching files, returns duplicate clusters."""
        size_map = defaultdict(list)
        total_files_scanned = 0
        total_bytes_scanned = 0

        for target in self.targets:
            for root, dirs, files in os.walk(target):
                # Prune skip dirs
                dirs[:] = [d for d in dirs if d not in (".git", "venv", "node_modules", "$RECYCLE.BIN", "System Volume Information")]
                for fname in files:
                    fpath = Path(root) / fname
                    if fpath.is_symlink():
                        continue
                    try:
                        sz = fpath.stat().st_size
                        if sz > 0:  # Skip 0-byte files in duplicate detection
                            size_map[sz].append(fpath)
                            total_files_scanned += 1
                            total_bytes_scanned += sz
                    except (PermissionError, OSError):
                        continue

        # Hash files that share exact byte size
        hash_map = defaultdict(list)
        candidates_count = sum(len(flist) for sz, flist in size_map.items() if len(flist) > 1)

        for sz, flist in size_map.items():
            if len(flist) > 1:
                for fpath in flist:
                    h = compute_sha256(fpath)
                    if h:
                        hash_map[(sz, h)].append(fpath)

        duplicate_clusters = []
        total_redundant_bytes = 0
        total_redundant_files = 0

        for (sz, h), flist in hash_map.items():
            if len(flist) > 1:
                # Rank files to pick the Authoritative Master (Keeper)
                # Preference:
                # 1. Master Vault or protected paths
                # 2. Shortest / most canonical path
                # 3. Oldest file
                def keeper_score(p: Path):
                    sp = str(p)
                    score = 0
                    if "MASTER_VAULT" in sp:
                        score += 50
                    if "DELTA_FORCE" in sp:
                        score += 40
                    if "setup" in sp:
                        score += 10
                    try:
                        mtime = p.stat().st_mtime
                    except Exception:
                        mtime = 0
                    return (-score, mtime, len(sp))

                sorted_files = sorted(flist, key=keeper_score)
                master = sorted_files[0]
                redundant = sorted_files[1:]

                duplicate_clusters.append({
                    "sha256": h,
                    "byte_size": sz,
                    "master_keeper": str(master),
                    "redundant_copies": [str(r) for r in redundant],
                    "redundant_count": len(redundant),
                    "redundant_bytes": sz * len(redundant)
                })

                total_redundant_files += len(redundant)
                total_redundant_bytes += sz * len(redundant)

        return {
            "timestamp_utc": datetime.now(timezone.utc).isoformat(),
            "targets_scanned": [str(t) for t in self.targets],
            "total_files_scanned": total_files_scanned,
            "total_bytes_scanned": total_bytes_scanned,
            "duplicate_clusters_count": len(duplicate_clusters),
            "redundant_files_count": total_redundant_files,
            "reclaimable_bytes": total_redundant_bytes,
            "reclaimable_mb": round(total_redundant_bytes / (1024 * 1024), 2),
            "reclaimable_gb": round(total_redundant_bytes / (1024 * 1024 * 1024), 3),
            "clusters": duplicate_clusters
        }

    def purge_duplicates(self, report: Dict[str, Any], dry_run: bool = True) -> Dict[str, Any]:
        """Purges identified redundant copies while keeping master."""
        purged_files = []
        errors = []
        freed_bytes = 0

        for cluster in report.get("clusters", []):
            for rpath_str in cluster["redundant_copies"]:
                rpath = Path(rpath_str)
                if self.is_protected(rpath):
                    continue

                if dry_run:
                    purged_files.append({"path": str(rpath), "action": "WOULD_DELETE", "bytes": cluster["byte_size"]})
                    freed_bytes += cluster["byte_size"]
                else:
                    try:
                        if rpath.exists():
                            sz = rpath.stat().st_size
                            rpath.unlink()
                            purged_files.append({"path": str(rpath), "action": "DELETED", "bytes": sz})
                            freed_bytes += sz
                    except Exception as e:
                        errors.append({"path": str(rpath), "error": str(e)})

        res = {
            "timestamp_utc": datetime.now(timezone.utc).isoformat(),
            "dry_run": dry_run,
            "purged_count": len(purged_files),
            "freed_bytes": freed_bytes,
            "freed_mb": round(freed_bytes / (1024 * 1024), 2),
            "freed_gb": round(freed_bytes / (1024 * 1024 * 1024), 3),
            "errors_count": len(errors),
            "errors": errors
        }

        # Save report
        with open(DEDUP_REPORT, "w", encoding="utf-8") as f:
            json.dump({**report, "purge_result": res}, f, indent=2, ensure_ascii=False)

        return res


def main():
    parser = argparse.ArgumentParser(description="ECSS Global Deduplication Engine")
    parser.add_argument("--dry-run", action="store_true", default=False, help="Perform scan and audit without deleting")
    parser.add_argument("--purge", action="store_true", default=False, help="Perform scan and purge redundant copies")
    args = parser.parse_args()

    dedup = ECSSGlobalDeduplicator()
    print("⚜️ ===================================================================== ⚜️")
    print("   RADRILONIUMA • ECSS GLOBAL DEDUPLICATION & ZERO COPIES PURGE (528 Hz)  ")
    print("⚜️ ===================================================================== ⚜️")

    is_dry_run = not args.purge
    if is_dry_run:
        print("🔍 Running in DRY-RUN Audit Mode (Safe, no files deleted)...")
    else:
        print("⚡ Running in PURGE Mode (Deleting redundant duplicate copies)...")

    scan_res = dedup.scan_and_identify()
    print(f"📦 Total files scanned  : {scan_res['total_files_scanned']}")
    print(f"🔄 Duplicate clusters   : {scan_res['duplicate_clusters_count']}")
    print(f"🗑️ Redundant files found: {scan_res['redundant_files_count']}")
    print(f"💾 Reclaimable space    : {scan_res['reclaimable_mb']} MB ({scan_res['reclaimable_gb']} GB)")

    purge_res = dedup.purge_duplicates(scan_res, dry_run=is_dry_run)
    action = "Would free" if is_dry_run else "Successfully freed"
    print(f"✅ {action}: {purge_res['freed_mb']} MB ({purge_res['freed_gb']} GB) across {purge_res['purged_count']} files.")
    print(f"📄 Full report saved to: {DEDUP_REPORT}")


if __name__ == "__main__":
    main()
