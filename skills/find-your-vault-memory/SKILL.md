---
name: find-your-vault-memory
description: "Second Brain vault navigator + memory router. Use when you need to locate where information should live in the Obsidian vault (Spark/Inbox/Processing/Clipping/Logs/Permanent/MOC), retrieve the right context quickly, and guide the agent to capture→route→log→synthesize without polluting unrelated folders."
---

# Find Your Vault Memory（Second Brain Navigator）

## Scope
This skill is the **vault-native navigation layer**.

Use it when you need to:
- Decide **where to write** (Spark/Inbox/Processing/Clipping/Logs/Permanent/MOC)
- Decide **what to read next** to answer a task with minimal context
- Produce **a small context pack** (links + 3–7 bullets) for downstream work

Not for:
- Writing a full permanent note → use `zettel-permanent-card-forger`
- Catching a brand-new spark with questions → use `zettel-spark-catcher`
- Routing a specific clipping file → use `clipping-router`

## Vault Root (SSOT)
- Default vault root: `vault/`
- If the runtime provides an environment variable `VAULT`, treat that as the actual root.

## Operating contract (always)
1) **Ask 1 clarifying question max** if destination is ambiguous.
2) Prefer **links + small bullets** over long prose.
3) Every write must be traceable: add links back to source log/clipping when possible.

---

## Decision tree — Where does this go?

### A) External source (link/article/video/tool page)
→ `11_Clipping/`
- Minimal required fields: link + 1–3 line summary + next action (optional)
- Assets: `11_Clipping/assets/`

### B) One-line idea / new direction / “I think we should…”
→ `00_Pupil/00-1_Inbox/`
- Save raw text, unchanged.
- If it grows into a discussion: write a log segment.

### C) Discussion that reached a conclusion / needs consolidation
→ `00_Pupil/00-2_Processing/`
- Cleaned structure, decisions, next actions.

### D) Long chat / work session transcript
→ `12_OpenClaw_Logs/`
- Keep it append-only or chunked.

### E) Stable, reusable knowledge (atomic, citeable)
→ `03_Solid_Knowledge/03-1_Permanent_Notes/`
- Use forge skill.

### F) Table of contents / system map / entrypoints
→ `99_Meta/MOC/`
- MOCs, protocols, runbooks pointers.

---

## Retrieval pattern — “Find the right memory fast”

When asked to continue a project or answer with vault context:
1) Identify target: **project** vs **system** vs **idea**.
2) Pull the smallest set:
   - Latest `clips_log.md` for that project (if exists)
   - Latest 1–3 clips for the same theme
   - Relevant MOC entry (if exists)
3) Return a **Context Pack**:
   - 3–7 bullets of what matters now
   - 3 links: (1) best clip, (2) best log, (3) target folder

---

## Output templates

### Context Pack (default)
- Now: (3–7 bullets)
- Open questions: (1–3)
- Next actions: (1–3)
- Links:
  - Clip: [[...]]
  - Log: [[...]]
  - Target folder: `.../`

### Routing decision (when user asks “where to put this?”)
- Type: Clipping | Spark | Processing | Log | Permanent | MOC
- Destination: `path/`
- Reason: 1 line
