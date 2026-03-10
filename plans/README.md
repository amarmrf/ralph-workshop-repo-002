# Ralph Starter Files

This repo is set up for a local Ralph workflow without Docker.

## Files

- `plans/prd.md`: the real task list for this app
- `plans/progress.txt`: append-only log of completed Ralph tasks
- `plans/prompt.md`: shared loop instructions
- `plans/once-claude.sh`: supervised Claude run
- `plans/afk-claude.sh`: unattended Claude loop
- `plans/once-codex.sh`: supervised Codex run
- `plans/afk-codex.sh`: unattended Codex loop
- `plans/artifacts/`: saved output from AFK runs

## First Run

Start with a supervised loop:

```bash
npm run ralph:once:claude
```

or:

```bash
npm run ralph:once:codex
```

Only use the AFK scripts after the single-run workflow looks correct.
