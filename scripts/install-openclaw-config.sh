#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="${1:-$HOME/.openclaw}"
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$ROOT_DIR/workspace" "$ROOT_DIR/workspaces/pm" "$ROOT_DIR/workspaces/dev-backend" "$ROOT_DIR/workspaces/dev-data" "$ROOT_DIR/workspaces/dev-infra" "$ROOT_DIR/workspaces/qa" "$ROOT_DIR/workspaces/retro" "$ROOT_DIR/cron"

rsync -a --delete \
  --exclude='.git' \
  --exclude='memory' \
  --exclude='memory/*' \
  --exclude='.openclaw' \
  --exclude='sessions' \
  --exclude='sessions/*' \
  --exclude='*.jsonl' \
  --exclude='workspace-state.json' \
  "$SRC_DIR/workspace/" "$ROOT_DIR/workspace/"
rsync -a --delete \
  --exclude='.git' \
  --exclude='memory' \
  --exclude='projects' \
  --exclude='repo' \
  "$SRC_DIR/workspaces/" "$ROOT_DIR/workspaces/"
rsync -a --delete "$SRC_DIR/cron/jobs.json" "$ROOT_DIR/cron/jobs.json"

cat <<MSG
Applied OpenClaw config to: $ROOT_DIR
- workspace: synced from $SRC_DIR/workspace
- workspaces: synced from $SRC_DIR/workspaces
- cron/jobs.json: copied

Next:
1) Copy templates/openclaw.json.template to $ROOT_DIR/openclaw.json
2) Fill in live tokens
3) Restart openclaw gateway so changes are loaded
MSG
