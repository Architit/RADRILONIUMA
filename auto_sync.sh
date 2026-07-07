#!/usr/bin/env bash
# RADRILONIUMA Auto-Sync Script

# Set working directory
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR" || exit 1

# Check for changes
if [[ -n $(git status -s) ]]; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Changes detected. Syncing..."
    
    # Stage all changes (including untracked files unless ignored)
    git add .
    
    # Commit with timestamp
    COMMIT_MSG="Auto-sync: $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MSG"
    
    # Push to origin master
    git push origin master
    
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Sync complete."
else
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] No changes to sync."
fi
