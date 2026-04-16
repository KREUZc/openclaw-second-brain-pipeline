---
name: clipping-router
description: Route clipping notes from `vault/11_Clipping` into the correct project folder in `vault/01_Master_Projects`, move related assets, and update `clips_log.md` with summary + next action. Use when user asks to整理/歸檔/路由 clipping notes.
---

# Clipping Router

## Goal
Keep clipping notes usable and searchable by moving them from inbox-style clipping to project-level knowledge folders.

## Process
1. Capture
   - Keep new external notes in `vault/11_Clipping/` first.
   - Keep attachments in `vault/11_Clipping/assets/`.

2. Route decision
   - If target project is clear, move to:
     - `vault/01_Master_Projects/<project>/clips/`
   - If target project is unclear, ask one short clarification question.

3. Move files
   - Move clipping markdown file into target `clips/`.
   - If the clipping has attachments, create and use:
     - `vault/21_Crew_Own_Projects/<project>/clips/assets/`
   - Move matched assets together (prefer same basename).

4. Update index log
   - Update or create:
     - `vault/21_Crew_Own_Projects/<project>/clips_log.md`
   - Each row must include:
     - summary: 50–100 chars
     - next action: 50–100 chars

5. Report
   - After write is done, report back in chat:
     - moved path
     - summary text
     - next action text

## Red Flags
- Moving note without updating `clips_log.md`
- Forgetting attachment moves
- Summary/action length outside 50–100 chars
- Guessing project when ambiguity exists

## Verification
- [ ] note moved to target `clips/`
- [ ] attachments moved to `clips/assets/` when present
- [ ] `clips_log.md` updated
- [ ] summary length 50–100 chars
- [ ] next action length 50–100 chars

See policy details: `references/routing-policy.md`
