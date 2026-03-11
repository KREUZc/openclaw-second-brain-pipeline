---
name: mycrew-diary-skill
description: Daily diary writer for the mycrew_vault second brain. Use to generate a first-person diary note summarizing the last 24 hours of activity and conversations (Cornell-style), and save it into /Memory/mycrew_vault/21_Crew_Own_Projects/mycrew-diary.
---

# mycrew-diary-skill

Generate a daily diary note for the last 24 hours and write it to the Obsidian vault.

## Output
- Path: `/Memory/mycrew_vault/21_Crew_Own_Projects/mycrew-diary/YYYYMMDD-0400-mycrew-diary.md`
- Format: Markdown with YAML frontmatter.
- Style: first-person (mycrew), Cornell-ish sections:
  - Cues / Questions
  - Notes (what happened)
  - Summary
  - Next actions

## Data sources (priority)
- `/Memory/mycrew_vault/12_OpenClaw_Logs/` (conversation logs)
- `/Memory/mycrew_vault/00_Pupil/00-1_Inbox/` (new sparks)
- `/Memory/mycrew_vault/11_Clipping/` (links)
- `/Memory/mycrew_vault/10_Social_Ops/` (ops changes)

## Script
Run:

```bash
scripts/write_diary.sh
```

