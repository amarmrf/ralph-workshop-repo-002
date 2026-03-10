# Ralph Agent Prompt

Read `plans/prd.md` and `plans/progress.txt` before changing anything.

Break the PRD into the smallest possible implementation tasks. Choose the next unchecked `PRD-*` task and complete exactly one task.

If every `PRD-*` item is complete, output `<promise>COMPLETE</promise>` and stop.

If you are blocked and cannot safely complete the selected task, output `<promise>ABORT</promise>` and explain the blocker.

Before committing:

- run `npm run test`
- run `npm run typecheck`
- run `npm run build`

After finishing the task:

- update `plans/prd.md` by checking off the completed item
- append a dated note to `plans/progress.txt`
- make one git commit

Commit rules:

- start the commit message with `RALPH:`
- include the completed `PRD-*` item
- keep the scope limited to the single task

Final rules:

- only do one task
- no backward compatibility work
- prefer small edits over wide refactors
