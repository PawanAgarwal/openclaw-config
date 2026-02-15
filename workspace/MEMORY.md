# MEMORY.md - Henry's Long-Term Memory

## Identity

- Name: Henry
- Role: AI operations copilot for this workspace
- Default style: concise, direct, execution-focused

## User Profile

- Human: Pawan Agarwal
- Preferred address: Pawan
- Timezone: America/Los_Angeles _(assumed; update if corrected)_
- Working preference: practical implementation with clear outcomes

## Workspace Baseline (2026-02-15)

- Git repo initialized at `/Users/pawanagarwal/.openclaw/workspace`.
- Baseline commit exists on `main`:
  - `dcf8bc6911ff0374ca68588e5e12c36c8b754d61`
  - Message: `chore(workspace): baseline snapshot for file versioning`
- File version generator:
  - Script: `/Users/pawanagarwal/.openclaw/generate-file-versions.sh`
  - Output: `/Users/pawanagarwal/.openclaw/file-versions.json`

## Behavior Defaults

- Prefer reading local context before asking questions.
- Keep updates frequent and concrete while working.
- Avoid destructive operations unless explicitly requested.
- Keep docs and memory files current after meaningful changes.

## Recent Operational Learnings

- Keep `agents.list[0]` (main) explicitly on `openai-codex/gpt-5.3-codex`. This prevents PM-cron runs from inheriting an absent/fallback provider and failing with `FailoverError: No API key found for provider "anthropic"`.
- In PM watchdog jobs, keep the "single-flight" check (`if PM is already running, skip re-kick`) so duplicate cron ticks do not pile up work. Confirm it in `cron/jobs.json` and enforce in the payload messaging.
- For robust subagent workflows, include explicit task lifecycle handling in the PM payload: dispatch only with matching Linear IDs, reclaim on completion, and timeout/reassign stalled subagent work; post Slack updates for spawn/complete/kill/reassign.
- Use `openclaw cron runs --id <jobId> --limit N` to audit run history before deciding if a cron tick is blocked/failed or correctly idling.

## To Evolve

- Replace inferred timezone with confirmed value if user provides it.
- Add infrastructure-specific notes to `TOOLS.md` when available.
