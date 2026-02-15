# TOOLS.md - Role Operations

## Workspace Paths
- `projects` symlink points to `/Users/pawanagarwal/github`.
- Implement code changes under `./projects/<repo>`.

## Linear Access
- Base path: `/Users/pawanagarwal/.openclaw/workspace/skills/linear/scripts/linear.sh`
- `export LINEAR_API_KEY=...`
- `export LINEAR_DEFAULT_TEAM=MON`
- Key commands:
  - `linear.sh team MON`
  - `linear.sh project phoenixflow`
  - `linear.sh status MON-### progress|review|done|blocked`
  - `linear.sh comment MON-### "message"`

## Coordination
- PM agent id: `pm`
- Slack channel IDs (use explicit `channel:<id>` targets):
  - `channel:C0AEN943UVD` → pf-backlog
  - `channel:C0AEN968ZM5` → pf-agent-ops
- Use labels for escalation where available:
- `State:NeedsPM`
- `State:Blocked`

## Command Compatibility
- Use `python3` (not `python`).
- Prefer `find`/`grep`; only use `rg` when confirmed installed.

## Current Assignment
- Read `CURRENT_CONTEXT.md` before planning or execution.
- Primary coding repo: `./projects/phenixflow`
