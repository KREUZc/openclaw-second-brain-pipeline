# openclaw-second-brain-pipeline

Turn scattered ideas into **shippable assets**.

This repository is a publishable template for an Obsidian-based second brain pipeline (capture → triage → distill → forge → index), plus a small set of OpenClaw-compatible skills.

> Goal: you focus on input and decisions; the system makes everything traceable, searchable, and automatable.

## Who this is for
- You want an Obsidian vault skeleton that **doesn’t decay into chaos** (naming rules, SSOT, MOCs, runbook/spec separation)
- You want AI to behave like an **operator with process + logs + boundaries**, not just a chatbot
- You want to share your workflow without leaking private content

## What’s inside
- `vault/` — a clean Obsidian vault template (Markdown only; no personal content)
- `skills/` — skills that implement the pipeline (Spark Catcher, Permanent Card Forger, Diary writer)

## The pipeline (what you get)
1) **Capture** — catch links, ideas, raw inputs (no perfection required)
2) **Triage** — route inputs into clippings / inbox / logs
3) **Distill** — extract what’s useful (don’t dump long text into “overview” notes)
4) **Forge** — convert into atomic permanent notes
5) **Index** — navigate via MOCs + Dataview queries (lists/boards)

## Hard rules (the glue that keeps it maintainable)
- Permanent Notes live in one place: `03_Solid_Knowledge/03-1_Permanent_Notes/`
- `00_Pupil/00-1_Inbox/` is **never deleted** (raw idea evidence). Follow-ups are always a **copy** into Processing or Logs.
- Attachments (images, etc.) go into same-level `asset/` and are embedded as: `![[asset/xxx.jpg]]`

### Required YAML frontmatter (by type)
- Permanent Notes: `tags` (2–4)
- runbook-*: `scope`, `owner: mycrew`
- spec-*: `dod`, `status: draft|active|done`
- Logs: `tags` (2–4); recommended: `created`, `summary`

For the full spec, see: `vault/99_Meta/SecondBrain-Protocol.md`

## Quickstart
1) Install Obsidian (desktop)
2) Copy `vault/` as your new vault (or merge into an existing one)
   - **Important**: have your OpenClaw (or main agent) read `vault/99_Meta/SecondBrain-Protocol.md` first, so the hard rules and file destinations are loaded before you start producing.
3) Open `vault/99_Meta/MOC/moc-ai-automation.md` as your home dashboard
4) Add runbooks/specs gradually—don’t try to pre-create the entire taxonomy

## Skills
- `zettel-spark-catcher/` — catches a new idea, asks 2–3 clarifying questions, and retains raw inbox notes
- `zettel-permanent-card-forger/` — forges atomic permanent notes (requires tags 2–4; includes summary)
- `mycrew-diary-skill/` — daily diary writer (supports `VAULT` env var)

> Note: skills in this repo are a **publishable snapshot**. They do not modify your local production setup.

## Problems we overcame (Troubleshooting)

This system is not “more folders.” It’s a set of decisions that directly fixes real failure modes we hit.

### P1: “The same idea ends up in different places every time.”
**Fix: evidence chain + version handoff.**
- **Capture (evidence)**: the original idea is written once to `00_Pupil/00-1_Inbox/` and never deleted.
- **Triage/Distill (handoff)**: any elaboration is a **copy** into `00-2_Processing/` or a new entry in `12_OpenClaw_Logs/`—no overwriting.

### P2: “Each project categorizes differently, so everything becomes inconsistent.”
**Fix: split ‘classification’ into 3 stable layers.**
- Folder location = **state / purpose** (Inbox / Processing / Logs / Permanent / Runbook / Spec)
- `tags` = **topic** (2–4)
- MOCs + Dataview = **aggregation / entry points** (queries, boards)

### P3: “Runbook vs spec—what goes where?”
- **runbook** = how to operate (steps, verification, troubleshooting). Required: `scope`, `owner: mycrew`
- **spec** = what to build + when it’s done. Required: `dod`, `status`

### P4: “Why enforce YAML frontmatter? Can’t we just use titles?”
Frontmatter enables Dataview queries (lists/boards) and makes retrieval consistent across projects.

### P5: “Why did a case-only rename break things on macOS?”
macOS often uses a case-insensitive filesystem; case-only renames can cause collisions and data loss.

### P6: “Where do images/attachments go so links don’t break?”
Put them in a same-level `asset/` folder and embed via `![[asset/filename.jpg]]`.

## Safety / privacy
This repo intentionally contains **no private vault data** (no logs, clippings, credentials, account IDs, or absolute machine paths).

## License
MIT License（詳見 `LICENSE`）
