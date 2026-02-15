# OpenClaw Agent Configuration

This repository stores OpenClaw team/agent operating configuration so it can be version controlled separately from project code.

## Scope in this repo

- `workspace/` – shared workspace runtime docs and policies
- `workspaces/` – one folder per agent role (`pm`, `dev-backend`, `dev-data`, `dev-infra`, `qa`, `retro`)
- `cron/jobs.json` – loop and heartbeat schedules used by the local OpenClaw gateway
- `templates/openclaw.json.template` – OpenClaw config with secrets redacted

## Notes on paths

All paths in the bundled agent instructions currently point at:
- `/Users/pawanagarwal/github/phenixflow`
- `./projects/phenixflow`

Keep these in sync with your active project by editing the files in `workspaces/*/CURRENT_CONTEXT.md` and `workspaces/*/TOOLS.md`.

## Apply to local OpenClaw

From this repo:

```bash
./scripts/install-openclaw-config.sh "$HOME/.openclaw"
```

Then place real credentials in:

- `~/.openclaw/openclaw.json`
- Replace placeholders in `templates/openclaw.json.template`

## Generate local config

```bash
cp templates/openclaw.json.template "$HOME/.openclaw/openclaw.json"
# Edit placeholders before running openclaw:
#   __SLACK_BOT_TOKEN__, __SLACK_APP_TOKEN__, __OPENCLAW_GATEWAY_TOKEN__, __TELEGRAM_BOT_TOKEN__
```

Do not commit tokens or secret keys into git.
