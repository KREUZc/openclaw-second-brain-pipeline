---
tags: [MOC, AI工作流, OpenClaw]
created: 2026-03-11
aliases: [MOC-AI Automation, MOC-AI自動化]
summary: "MOC dashboard for AI automation/agents: entrypoints, methods library, runbooks/specs boards, and related permanent notes."
---
# MOC：AI 自動化與代理人

這個地圖匯集所有關於 AI 代理、自動化工作流與 Prompt Engineering 的知識節點，並作為操作面板（dashboard）。

## Now / Next（本週面板）
- **Now（正在跑）**
  - 第二大腦流程（協議/命名/檢核）→ [[SecondBrain-Protocol]]
- **Next（下一步）**
  - 把更多方法卡補齊（例如：Distill 模板、Spark Catcher 問題庫）
  - 把 spec/runbook 的必填欄位補成可用值（dod/status/scope）

## 入口（Entry Points）
- 協議：[[SecondBrain-Protocol]]（`99_Meta/SecondBrain-Protocol.md`）
- 方法卡（3 問法）：[[三問法-從輸入到輸出的固定檢核]]
- OpenClaw Logs：`/12_OpenClaw_Logs/`
- Clipping：`/11_Clipping/`
- Runbooks（單一真相）：`/20_Runbooks/`
- Specs（技能規格）：`/21_Crew_Own_Projects/skill-library/specs/`

## 方法庫（Methods Library）
- [[第二大腦-火花到知識的公式化流程]]
- [[三問法-從輸入到輸出的固定檢核]]

## Runbooks 看板（How-to）
```dataview
TABLE scope, owner, summary
FROM "20_Runbooks"
WHERE startswith(file.name, "runbook-")
SORT scope asc
```

### Social Ops runbooks
```dataview
TABLE scope, owner, summary
FROM "20_Runbooks/social-ops"
WHERE startswith(file.name, "runbook-")
SORT file.name asc
```

## Specs 看板（What to build）
```dataview
TABLE status, dod, summary
FROM "21_Crew_Own_Projects/skill-library/specs"
WHERE startswith(file.name, "spec-")
SORT status asc
```

## 相關永久筆記（Knowledge Nodes）
```dataview
TABLE created as "建立日期", summary as "摘要", aliases as "別名"
FROM "03_Solid_Knowledge/03-1_Permanent_Notes"
WHERE contains(tags, "AI工作流") OR contains(tags, "OpenClaw")
SORT created desc
```

## 常用查詢（可複製）
### 找「方法」卡片
```dataview
LIST
FROM "03_Solid_Knowledge/03-1_Permanent_Notes"
WHERE contains(tags, "方法")
SORT created desc
```

### 找「尚未完成」的 spec
```dataview
LIST
FROM "21_Crew_Own_Projects/skill-library/specs"
WHERE status != "done"
SORT file.mtime desc
```
