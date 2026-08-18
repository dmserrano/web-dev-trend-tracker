#!/usr/bin/env bash
# Syncs the generated trend-tracker content into the plain git clone and pushes it.
# Run this after each weekly scheduled run (or anytime you want to publish).

set -euo pipefail

SRC="$HOME/workspace/trend-tracker/"
DEST="$HOME/workspace/web-dev-trend-tracker"

if [ ! -d "$DEST/.git" ]; then
  echo "Error: $DEST is not a git repo yet."
  echo "Run this first: git clone https://github.com/dmserrano/web-dev-trend-tracker.git \"$DEST\""
  exit 1
fi

echo "Syncing $SRC -> $DEST"
rsync -a --exclude '.git' "$SRC" "$DEST/"

cd "$DEST"

if [ -z "$(git status --porcelain)" ]; then
  echo "Nothing changed — already up to date."
  exit 0
fi

git add -A
git commit -m "Weekly trend update $(date +%F)"
git push

echo "Published. Live at: https://dmserrano.github.io/web-dev-trend-tracker/"
