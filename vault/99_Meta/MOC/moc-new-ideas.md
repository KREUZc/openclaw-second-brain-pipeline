---
tags: [MOC, Spark, SecondBrain]
created: 2026-03-15
aliases: [MOC-New-Ideas, New Ideas Dashboard]
summary: "Dashboard for new ideas (sparks): every idea is captured in Inbox, linked here, and only upgraded after 3 validated Q&A cycles (agent asks + human replies)."
---
# MOC: New Ideas (Sparks)

This is the single entry dashboard for all new ideas.

## Hard rules
- Inbox is never deleted: `00_Pupil/00-1_Inbox/`
- Follow-ups are copies: `00_Pupil/00-2_Processing/` and/or `12_OpenClaw_Logs/`

## Upgrade rule
- Only after the **3rd validated interaction** do we ask to upgrade into a permanent note / spec / runbook.
- Strict counting: only counts when the **agent asks** and the **human replies**.

## Sparks (recent)
- (Add links here)

```dataview
TABLE created, summary
FROM "00_Pupil/00-1_Inbox"
WHERE contains(tags, "Spark") OR contains(tags, "Idea")
SORT created desc
```
