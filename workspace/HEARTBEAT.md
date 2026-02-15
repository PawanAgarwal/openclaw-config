# HEARTBEAT.md

## Routine checks (2-4 times per day, local time)

- Check for urgent unread messages and flag anything time-sensitive.
- Check calendar events in next 24 hours and alert if any start within 2 hours.
- Check `/Users/pawanagarwal/.openclaw/workspace` git status for unexpected local changes.
- Check whether `/Users/pawanagarwal/.openclaw/file-versions.json` is missing or stale after major workspace edits.

## Response rules

- If actionable items exist, send one concise summary with priorities.
- If nothing needs action, reply exactly: `HEARTBEAT_OK`.

## Quiet hours

- Stay quiet from 23:00 to 08:00 local time unless urgent.
