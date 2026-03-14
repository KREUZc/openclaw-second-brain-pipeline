---
tags: [SecondBrain, Onboarding, AI]
created: 2026-03-14
aliases: [AI 上手指南, AI Onboarding]
summary: "讓 AI 帶人類快速上手本 vault：先讀協議、遵守寫入邊界、用 10 分鐘完成最小閉環（Inbox→Clipping→Permanent）。"
---
# AI 上手指南（讓代理人帶你快速落地）

這份文件是給「AI 代理」讀的，也給人類當快速導覽。目標是：**10 分鐘內完成最小閉環**，讓你從第一天就能穩定使用這套第二大腦。

## 0) 先讀這兩份（必讀）
1) `vault/99_Meta/SecondBrain-Protocol.md`（長版協議，SSOT）
2) （若你有）`WORKFLOW_AUTO.md`（短版硬規則；本 repo 可能不附）

> 原則：短的用來防呆，長的用來做事。

## 1) AI 的硬規則（不可違反）
- **不覆寫原始想法**：`00_Pupil/00-1_Inbox/` 只進不出，永不刪除。
- **延伸討論用複製承接**：整理/收斂請複製到 `00-2_Processing/` 或寫入 `12_OpenClaw_Logs/`。
- **只在正確落點寫入**：
  - Clipping → `11_Clipping/`
  - Permanent Notes → `03_Solid_Knowledge/03-1_Permanent_Notes/`
  - Runbooks → `20_Runbooks/`
  - Specs → `21_Crew_Own_Projects/skill-library/specs/`
- **不硬塞分類**：資料夾主要代表「狀態/用途」，主題分類靠 `tags`（2–4）與 MOC/Dataview 聚合。

## 2) AI 問人類的 3 個問題（用來對齊工作流）
1) 你最常卡的痛點是哪一種？
   - 想法會消失 / 找不到 / 分類爆炸 / AI 每次都要重講 / 產不出可交付物
2) 你主要要優化哪個結果？
   - 找得到（retrieval）/ 不分岔（versioning）/ 能交付（shipping）
3) 你現在要用 Obsidian 嗎？
   - 這套系統 **不依賴 Obsidian**；Obsidian 只是讓檢索/看板更方便。

## 3) 10 分鐘上手：最小閉環（MVP）

### Step A — Capture：寫下一個想法（1–2 分鐘）
- 在 `00_Pupil/00-1_Inbox/` 新增一個檔案（依命名規則），把你腦中那句話直接寫下。
- 不要求整理，只要保留原文。

### Step B — Web clipping：貼一個連結（2–3 分鐘）
- 把一個你正在看的文章/影片連結存成 clipping（包含 source link + 3–7 行摘要）。
- 若遇到登入牆/反爬，先記錄「擷取受阻」，再用貼全文/截圖/Browser Relay 補齊。

### Step C — Forge：做一張永久卡片（3–5 分鐘）
- 從 Step A 或 Step B 選一個素材，提煉成 1 張永久筆記：
  - 2–4 個 tags
  - 1 句 summary
  - 只寫「可重複使用」的規則/框架

完成後，你就擁有：
- 原始想法（Inbox，證據鏈）
- 來源摘要（Clipping，可追溯）
- 可複用知識（Permanent Note，可增值）

## 4) 常見失敗模式（AI 要主動提醒）
- 把 Inbox 當垃圾桶：Inbox 不刪除，但要有 review 節奏（否則噪音堆積）。
- 把整理當成果：不要用系統掩蓋產出，先把最小閉環跑通。
- Frontmatter 不填：後續 Dataview/看板會失效。

## 5) 下一步（建議）
- 把常做的流程寫成 runbook（How-to）。
- 把要開發/要做的東西寫成 spec（What-to-build + DoD + status）。
- 把入口集中到 MOC（Dashboard）。
