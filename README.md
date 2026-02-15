# OpenClaw Agent Configuration

This repository stores OpenClaw team/agent operating configuration so it can be version controlled separately from project code.

## Scope in this repo

- `workspace/` – shared workspace runtime docs and policies
- `workspaces/` – one folder per agent role (`pm`, `dev-backend`, `dev-data`, `dev-infra`, `qa`, `retro`)
- `cron/jobs.json` – loop and heartbeat schedules used by the local OpenClaw gateway
- `templates/openclaw.json.template` – OpenClaw config with secrets redacted

## Notes on paths

All agent prompts in this repo reference:
- `./projects/phenixflow`
- `https://github.com/pawanagarwal/phenixflow`
- workspace/repo paths under `/Users/pawanagarwal`

Keep these in sync with your active machine/project by editing:
- `workspaces/*/CURRENT_CONTEXT.md`
- `workspaces/*/TOOLS.md`

`templates/openclaw.json.template` uses `__OPENCLAW_ROOT__` and `__OPENCLAW_ROOT__/workspaces/*` placeholders. Replace these before generating `~/.openclaw/openclaw.json`.

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
#   __OPENCLAW_ROOT__, __SLACK_BOT_TOKEN__, __SLACK_APP_TOKEN__, __OPENCLAW_GATEWAY_TOKEN__, __TELEGRAM_BOT_TOKEN__
```

Do not commit tokens or secret keys into git.
