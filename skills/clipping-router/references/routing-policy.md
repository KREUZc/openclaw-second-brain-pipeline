---
tags: [Clipping, Routing, Policy]
created: 2026-04-09
---

# Routing Policy (Generic)

## Canonical paths
- Staging notes: `vault/11_Clipping/`
- Staging assets: `vault/11_Clipping/assets/`
- Project clips: `vault/01_Master_Projects/<project>/clips/`
- Project assets: `vault/01_Master_Projects/<project>/clips/assets/`
- Project index: `vault/01_Master_Projects/<project>/clips_log.md`

## clips_log schema
| 檔名 | 摘要 | 行動建議 |
|---|---|---|

- 摘要: 50–100 chars
- 行動建議: 50–100 chars

## Decision rules
- Clear project mapping → move immediately.
- Ambiguous mapping → ask user first.
- No project yet → keep in `11_Clipping` with TODO marker.
