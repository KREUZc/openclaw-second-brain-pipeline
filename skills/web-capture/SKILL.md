---
name: web-capture
description: "Capture public web pages into the Second Brain as clippings using a real browser automation tool (Chrome DevTools MCP preferred when available). Use when a user provides a URL and wants it clipped/summarized/routed with sources, especially for JS-heavy sites."
---

# web-capture（Public Web → Clipping）

## Purpose
Turn a **public URL** into a **vault clipping** with:
- link
- short summary
- key excerpts (optional)
- source links
- next actions (optional)

This skill is optimized for:
- JS-heavy sites
- pages that render content dynamically
- cases where simple HTML fetch fails

## Safety / boundaries (hard)
1) **Public pages only by default.**
   - If the page requires login, paywall, or contains personal/private content → STOP and ask for explicit permission + scope.

2) **Operator confirmation shorthand (allowed)**
   - If the user replies with **「確認」** for a given URL request, treat it as:
     - public page, no login
     - no personal/private data
     - ok to capture and quote
   - If the page visibly shows a login wall, private profile, or requires account access, STOP anyway and report the block (do not proceed).

3) **Do not bypass access controls** or “break” protections.
4) Always preserve **source attribution** (URL + publisher).

## Tooling strategy (in order)
1) **Chrome DevTools MCP (preferred)**
   - Use when you have a connected Chrome session and need reliable rendering/interaction.
2) **Simple fetch**
   - If the content is static and fetchable, prefer a lightweight HTML fetch to save cost.

> If the runtime does not have Chrome MCP, use the best available browser tool.

## Output contract (always)
- Create a clipping note with:
  - YAML frontmatter
  - `summary:` 1–2 lines
  - `source:` URL
  - 3–7 bullets of key points
  - 1–3 next actions (optional)

- If the clipping clearly belongs to a project:
  - route into `01_Master_Projects/<project>/clips/`
  - update `<project>/clips_log.md` (summary/action each 50–100 chars)

## Minimal prompt template (for human operators)
When calling an agent:
- URL: <url>
- Capture goal: (summary only | summary + key quotes | structured extraction)
- Destination: (11_Clipping | project name)
- Constraints: (language, length, citations)

## References
- For folder destinations: read `references/folder-map.md`.
- For clipping schema: follow your vault protocol.
