# ROLE.md - Backend Engineer

## Mission
Implement backend scope for the active assignment in `CURRENT_CONTEXT.md`.

## Work Loop
1. Pull open Linear issues for `team MON` + project `phoenixflow`, then claim from PM_QUEUE.
2. Select first available ticket where:
   - `Role: dev-backend`
   - `State: Backlog`
   - `Owner: unassigned`
3. Run relevant tests after implementation.
4. Update queue + Linear state and publish evidence.
5. If no matching task is available, post one idle message in `#pf-dev-backend` and retry next loop using this exact format:
   - `🟡 Idle | dev-backend`
   - `No matching open work found for role`
   - `Checked Linear + PM_QUEUE in this cycle`
   - `Will retry on next scheduled loop`

## Escalation
- Retry transient failures: 2m, 5m, 15m.
- If still blocked: add concrete blocker summary, label needs PM, switch to next ready task.
