#!/usr/bin/env python3
"""
Daily Trash Purge, Pruning & Wipe Engine V1 (Ежедневная очистка, обрезка и вайп)
Scans and purges temporary cache files, old scratch files, expired logs, and build artifacts.
"""

import os
import sys
import shutil
import time
from pathlib import Path
from typing import Dict, Any, List

class DailyTrashPurgeEngine:
    def __init__(self, root_dir: str):
        self.root_dir = Path(root_dir)

    def purge_temporary_caches(self) -> Dict[str, Any]:
        """
        Purges __pycache__, .pytest_cache, and temporary log buffers.
        """
        purged_dirs = []
        bytes_freed = 0
        
        for path in self.root_dir.rglob("__pycache__"):
            if path.is_dir():
                bytes_freed += sum(f.stat().st_size for f in path.rglob("*") if f.is_file())
                shutil.rmtree(path, ignore_errors=True)
                purged_dirs.append(str(path))
                
        pytest_cache = self.root_dir / ".pytest_cache"
        if pytest_cache.exists():
            bytes_freed += sum(f.stat().st_size for f in pytest_cache.rglob("*") if f.is_file())
            shutil.rmtree(pytest_cache, ignore_errors=True)
            purged_dirs.append(str(pytest_cache))

        return {
            "purged_directories_count": len(purged_dirs),
            "bytes_freed": bytes_freed,
            "status": "PURGE_COMPLETE"
        }

    def prune_expired_logs(self, max_age_days: int = 7) -> Dict[str, Any]:
        """
        Prunes log files older than max_age_days in .gateway/ and temporary directories.
        """
        pruned_files = []
        now = time.time()
        cutoff = now - (max_age_days * 86400)
        
        gateway_dir = self.root_dir / ".gateway"
        if gateway_dir.exists():
            for log_file in gateway_dir.rglob("*.log"):
                if log_file.is_file() and log_file.stat().st_mtime < cutoff:
                    pruned_files.append(str(log_file))
                    log_file.unlink(missing_ok=True)

        return {
            "pruned_files_count": len(pruned_files),
            "max_age_days": max_age_days,
            "status": "PRUNING_COMPLETE"
        }

if __name__ == "__main__":
    root = os.getenv("ROOT_DIR", os.getcwd())
    engine = DailyTrashPurgeEngine(root)
    c_res = engine.purge_temporary_caches()
    l_res = engine.prune_expired_logs()
    print("Purge Cache Result:", c_res)
    print("Prune Logs Result:", l_res)
