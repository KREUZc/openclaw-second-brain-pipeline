---
tags: [SecondBrain, Onboarding, AI]
created: 2026-03-14
aliases: [AI Onboarding Guide]
summary: "An AI-first onboarding guide for this vault: read the protocol, respect write boundaries, and complete a 10-minute minimum loop (Inbox→Clipping→Permanent)."
---
# AI Onboarding (let an agent get you productive fast)

This file is written for an AI agent to follow, and for a human to skim. Goal: **finish a minimum working loop in 10 minutes** so you can use this second brain from day one.

## 0) Read these first (required)
1) `vault/99_Meta/SecondBrain-Protocol.md` (long-form SSOT)
2) If you have it: `WORKFLOW_AUTO.md` (short “boot rules”; this repo may not ship it)

> Short rules prevent mistakes. Long rules explain how the system works.

## 1) Hard rules (do not break)
- **Never overwrite raw ideas**: `00_Pupil/00-1_Inbox/` is append-only and never deleted.
- **Follow-ups are copies**: refinement/discussion goes to `00-2_Processing/` and/or `12_OpenClaw_Logs/`.
- **Write only to the correct destinations**:
  - Clippings → `11_Clipping/`
  - Permanent Notes → `03_Solid_Knowledge/03-1_Permanent_Notes/`
  - Runbooks → `20_Runbooks/`
  - Specs → `21_Crew_Own_Projects/skill-library/specs/`
- **Do not force taxonomy**: folders represent *state/purpose*. Topics are handled by `tags` (2–4) and aggregated via MOCs/Dataview.

## 2) Three onboarding questions (agent asks the human)
1) Which pain do you hit most?
   - ideas disappear / can’t retrieve / taxonomy chaos / AI needs repeated instructions / can’t ship deliverables
2) What outcome do you want to optimize?
   - retrieval / versioning (no forks) / shipping (deliverables)
3) Are you using Obsidian?
   - This system does **not** depend on Obsidian. Obsidian mainly improves navigation and dashboards.

## 3) 10-minute onboarding: the Minimum Working Loop (MWL)

### Step A — Capture a raw idea (1–2 min)
- Create one note under `00_Pupil/00-1_Inbox/` (follow the naming rules) and write the raw sentence.
- No cleanup. Preserve the original.

### Step B — Clip one link (2–3 min)
- Save one URL as a clipping note with: source link + 3–7 lines of summary.
- If the source is login-gated/blocked: record **extraction blocked**, then use paste text / screenshots / Browser Relay to complete it.

### Step C — Forge one permanent note (3–5 min)
- Pick a piece of material from Step A or B and forge **one** permanent note:
  - 2–4 tags
  - 1-line summary
  - write only reusable rules/frameworks

After this loop, you have:
- Raw idea (Inbox, evidence chain)
- Source summary (Clipping, traceable)
- Reusable knowledge (Permanent Note, compounding)

## 4) Common failure modes (agent should warn early)
- Treating Inbox as a trash can: Inbox is never deleted, but you still need a review rhythm.
- Confusing organization with output: run the minimum loop first; don’t hide procrastination behind taxonomy.
- Skipping YAML frontmatter: it breaks Dataview/boards and consistent retrieval.

## 5) Next steps (recommended)
- Convert repeated workflows into runbooks (How-to).
- Convert build requirements into specs (What-to-build + DoD + status).
- Centralize entry points in an MOC dashboard.
