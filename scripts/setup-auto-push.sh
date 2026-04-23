#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

mkdir -p .githooks
chmod +x .githooks/post-commit 2>/dev/null || true

git config core.hooksPath .githooks

echo "✅ Auto-push hook enabled via core.hooksPath=.githooks"
echo "   Every successful commit will run: git push origin <current-branch>"
echo "   Temporary opt-out: AUTO_PUSH_DISABLED=1 git commit -m '...'
"
