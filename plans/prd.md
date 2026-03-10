# Ralph Workshop Landing Page PRD

## Goal

Replace the default Next.js starter page with a single-page workshop landing page that teaches the Ralph workflow locally with Claude and Codex.

## Product Outcome

When someone opens the app, they should immediately understand:

- what Ralph is
- why small iterative tasks matter
- how to run a supervised loop first
- which commands to run with Claude and Codex

## Constraints

- Hard cutover only. Do not preserve the default starter page.
- Keep the app as a single marketing-style page in `app/page.tsx`.
- Do not add new dependencies for the first pass.
- Keep the design responsive on mobile and desktop.
- Prefer clear content over clever abstractions.

## Task List

- [ ] `PRD-1` Update site metadata in `app/layout.tsx` for the workshop page.
- [ ] `PRD-2` Replace the starter hero in `app/page.tsx` with a Ralph workshop headline, summary, and primary calls to action.
- [ ] `PRD-3` Add a "What You Will Learn" section with three concise learning cards.
- [ ] `PRD-4` Add a "How Ralph Works" section that explains the loop in four ordered steps.
- [ ] `PRD-5` Add a "Run It Locally" section with separate Claude and Codex command blocks.
- [ ] `PRD-6` Refresh `app/globals.css` and page styling so the page feels intentional instead of template-like.
- [ ] `PRD-7` Add a closing section with practical guidance for choosing a first repo and starting with a supervised run.

## Acceptance Criteria

- The default Next.js copy and template links are gone.
- The page has a clear workshop-focused narrative from top to bottom.
- Claude and Codex are both represented with runnable commands.
- The layout reads well on narrow screens and wide screens.
- `npm run test`, `npm run typecheck`, and `npm run build` pass after each completed task.

## Content Notes

- Keep the tone direct and instructional.
- Mention supervised runs before AFK loops.
- Avoid hand-wavy claims about autonomy or productivity.
- Do not mention Docker in the page copy.
