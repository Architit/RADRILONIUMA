#!/usr/bin/env python3
import os
import sys
import subprocess
import json
from datetime import datetime

class BugRouter:
    def __init__(self, title, description, log_path=None):
        self.title = title
        self.description = description
        self.log_path = log_path
        self.timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        self.report_dir = "/home/architit/LAM_CORE/RADRILONIUMA/gov/report/bugs"
        os.makedirs(self.report_dir, exist_ok=True)
        self.local_file = os.path.join(self.report_dir, f"bug_report_{self.timestamp}.md")

    def generate_local_report(self):
        sys_info = subprocess.getoutput("uname -a")
        node_ver = subprocess.getoutput("node -v")
        
        report_content = f"# {self.title}\n\n## Description\n{self.description}\n\n"
        report_content += f"## System Context\n- **OS**: {sys_info}\n- **Node**: {node_ver}\n"
        
        if self.log_path and os.path.exists(self.log_path):
            report_content += f"\n## Attached Log File\n`{self.log_path}`\n"

        with open(self.local_file, "w") as f:
            f.write(report_content)
        print(f"[RADR_BUG_ROUTER] Local report saved: {self.local_file}")

    def push_to_github(self):
        print("[RADR_BUG_ROUTER] Pushing to GitHub (Headless)...")
        try:
            # Requires prior authorization: gh auth login
            cmd = ["gh", "issue", "create", "--title", self.title, "--body-file", self.local_file, "--repo", "google-gemini/gemini-cli"]
            subprocess.run(cmd, check=True)
            print("[RADR_BUG_ROUTER] GitHub Issue Created Successfully.")
        except Exception as e:
            print(f"[RADR_BUG_ROUTER] GitHub Push Failed: {e}")

    def push_to_rclone(self, remote_name):
        print(f"[RADR_BUG_ROUTER] Syncing to {remote_name} via rclone...")
        try:
            # Command: rclone copy <local_file> <remote_name>:<path>
            subprocess.run(["rclone", "copy", self.local_file, f"{remote_name}:RADRILONIUMA/bugs/"], check=True)
            print(f"[RADR_BUG_ROUTER] Successfully pushed to {remote_name}.")
        except Exception as e:
            print(f"[RADR_BUG_ROUTER] Rclone push to {remote_name} failed: {e}")

    def route(self):
        self.generate_local_report()
        self.push_to_github()
        self.push_to_rclone("gdrive")
        self.push_to_rclone("onedrive")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python3 bug_router.py <title> <description> [log_path]")
        sys.exit(1)
    
    router = BugRouter(sys.argv[1], sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else None)
    router.route()
