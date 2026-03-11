---
tags: [Runbook, SecondBrain, Obsidian, OpenClaw]
created: 2026-03-11
aliases: [Runbook SecondBrain Ops]
summary: "How-to runbook: Runbook：第二大腦（mycrew × Master FJ）"
scope: "secondbrain-ops"
owner: mycrew
---
# Runbook：第二大腦（mycrew × Master FJ）

## 目的
確保「火花」能一致、快速、公式化：Capture → Triage → Distill → Forge → MOC。

## Vault 根目錄
- `/Memory/mycrew_vault/`

## 路徑規範（固定）
- Inbox（新想法原文全存）：`00_Pupil/00-1_Inbox/`
- Processing（整理區）：`00_Pupil/00-2_Processing/`
- Permanent Notes：`03_Solid_Knowledge/03-1_Permanent_Notes/`
- OpenClaw Logs：`05_OpenClaw_Logs/`
- Clipping（連結剪藏）：`98_Clipping/`
- MOC：`99_Meta/MOC/`

## 檔名規範（固定）
- `YYYYMMDD-HHMM-[slug].md`（24 小時制）

## 觸發規則（無額外指示時）
1) 只貼連結 → 寫入 `98_Clipping/`（含摘要）
2) 新想法第一則 → 寫入 `00-1_Inbox/`（原文全存），同時啟動 Spark Catcher 問答
3) 主題切換 → 先落 log 至 `05_OpenClaw_Logs/` 再進新主題

## 依賴技能（已安裝/已匹配）
- summarize：讀連結/檔案並摘要（剪藏）
- zettel-spark-catcher：靈感捕捉與擴寫（提問）
- zettel-permanent-card-forger：永久筆記鑄造（原子化）

## 文件索引
- 協議主文：`99_Meta/SecondBrain-Protocol.md`
- MOC：`99_Meta/MOC/moc-ai-automation.md`

## Distill / Forge 固定檢核（3 問法）
- Distill 前先回答：
  1) 我到底該懂什麼？
  2) 哪些我沒懂/容易混？
  3) 我能不能用自己的話講出來/做出來？
- Forge（永久筆記）每張卡片必須回答至少 2 問。

### Spark Catcher：3 問提問版（新想法）
- 問題 1：你現在最想釐清的是什麼？（概念）
- 問題 2：你覺得最不確定/最容易混的是什麼？（盲點）
- 問題 3：你希望產出長什麼樣？（輸出/可行動）


## YAML Frontmatter（必填）
- runbook-* 必填：`scope`、`owner: mycrew`
- spec-* 必填：`dod`、`status: draft|active|done`
- Permanent Notes 必填：`tags`（2–4）

## Inbox 不刪除（raw idea retention）
- `00_Pupil/00-1_Inbox/` 的原始想法檔案永不刪除。
- 延伸討論/整理：複製一份到 `00_Pupil/00-2_Processing/` 或 `12_OpenClaw_Logs/`，不要覆寫原檔。
