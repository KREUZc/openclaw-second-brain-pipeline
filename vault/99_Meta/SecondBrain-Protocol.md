---
tags: [SecondBrain, Obsidian, OpenClaw, SOP]
created: 2026-03-11
aliases: [Second Brain Protocol]
---
# 第二大腦協作協議（mycrew × Master FJ）

## 0. 目標
讓「我們之間的火花」在任何時刻都能被：一致捕捉 → 快速歸檔 → 可回溯提煉 → 最終沉澱為可用知識。

## 1. Vault 根目錄
- Root: `/Memory/vault/`
- 所有寫入：**Obsidian Markdown**（`.md`）
- 所有新檔案：檔首必須包含 YAML frontmatter（像 skill.md 格式）

## 2. 標準資料夾
- `00_Pupil/00-1_Inbox/`：新想法/火花第一落點（原文全存）
- `00_Pupil/00-2_Processing/`：整理、去雜訊、準備提煉
- `03_Solid_Knowledge/03-1_Permanent_Notes/`：永久筆記（原子化）
- `12_OpenClaw_Logs/`：對話原始紀錄（長對話、跨主題分段落檔）
- `11_Clipping/`：外部連結剪藏（連結 + 簡短摘要）
- `99_Meta/MOC/`：MOC（概念地圖）與系統規格

## 3. 檔名規格
- 連結剪藏（預設行為）：`yyyymmdd-hhmm-[link-article-title].md`
- 新想法第一則：`yyyymmdd-hhmm-[topic-or-short-title].md`
- 對話 log（換主題時切檔）：`[topic-name]-yyyymmdd-hhmm.md`

> 註：title 一律做簡短 slug；無法解析標題時用 `untitled`。


## 3.5 YAML Frontmatter 規範（必填規則）
以下為『檔案類型 → 必填欄位』規範。

### Permanent Notes（`03_Solid_Knowledge/03-1_Permanent_Notes/*.md`）
- 必填：`tags`（2–4 個足夠）

### runbook-*（`20_Runbooks/runbook-*.md` + 子資料夾內 runbook-*）
- 必填：`scope`（這個 runbook 管哪個系統/技能）
- 必填：`owner: mycrew`

### spec-*（`21_Crew_Own_Projects/skill-library/specs/spec-*.md`）
- 必填：`dod`（Definition of Done 一句）
- 必填：`status`（draft|active|done）

## 4. 預設輸入行為（無其他指示時）
### 4.1 你只貼「連結」
- 動作：讀取連結 → 產出極短摘要 → 寫入 `11_Clipping/`
- 內容包含：link、摘要、可用行動/關鍵點（若有）

### 4.2 你丟「新想法」的第一則訊息
- 動作：
  1) 我回覆你（先問問題，不急著下結論）
  2) **同時把你原文完整寫入** `00_Pupil/00-1_Inbox/`

## 4.5 重要：macOS 大小寫改名禁則
- macOS 預設磁碟多為 **大小寫不敏感**（case-insensitive）。
- 因此**禁止**只靠大小寫差異進行資料夾改名（例如 `00_PUPIL` → `00_Pupil`）。
- 如需改名：必須改成**不同字串**（例如加上 `_system` / `-v2` / 改完整名稱），或採兩段式搬移（先搬到中繼資料夾再搬到目標）。


## 4.3 Inbox 不刪除規則（保留原始 idea）
- `00_Pupil/00-1_Inbox/` 內的檔案 **永不刪除**，作為原始想法（raw idea）的證據鏈。
- 延伸討論/整理時，不在原檔上覆寫重寫；改採『複製一份』：
  - 整理/收斂草稿 → `00_Pupil/00-2_Processing/`
  - 對話分段/原始紀錄 → `12_OpenClaw_Logs/`
- 原則：**原始 idea 保持原封不動**；後續版本用新檔案承接。

## 5. 三段式技能流程（對應你的規格）
### 技能一：Spark Catcher（靈感捕捉與擴寫）
- 觸發：新想法進 Inbox
- 行為：先確認是否為新對話 → 2–3 個關鍵引導問題 → 一次一問答
- 產物：對話加深；結束後寫入 `12_OpenClaw_Logs/`

### 技能二：Log Distiller（對話提煉與收斂）
- 觸發：你說「整理/提煉/收斂」或對話已完成
- 行為：去寒暄、去重複 → 抓核心概念/方案/步驟
- 產物：輸出草稿（待你確認），放入 `00-2_Processing/`

### 技能三：Permanent Card Forger（永久卡片鑄造）
- 觸發：你說「做成卡片/永久筆記」或我們已有結論
- 行為：原子化、可引用、可連結
- 產物：寫入 `03-1_Permanent_Notes/`，並回鏈到對應 log

## 5.5 Distill / Forge 固定檢核（3 問法）
在進入 Distill（整理）與 Forge（鑄造）前，使用固定問題模板強制結構化理解：

### Distill（整理前必做）
用 3 問把材料變成結構（概念 / 盲點 / 輸出）：
1) **我到底該懂什麼？**（主題、核心概念、關鍵詞）
2) **哪些我沒懂 / 容易混？**（盲點、相似概念對照、反例）
3) **我能不能用自己的話講出來 / 做出來？**（步驟、例子、可行動輸出）


### Spark Catcher（新想法）如何套用 3 問法
當你丟新想法的第一則訊息時，我會把 3 問改寫成『提問版本』，縮短發散時間但保留深度：
- 你現在最想解決/釐清的是哪一塊？（= 我到底該懂什麼）
- 你覺得最不確定/最容易混淆的點是什麼？（= 哪些我沒懂/容易混）
- 如果要在 30 分鐘內產出一個可用結果，你希望它長什麼樣？（= 我能不能用自己的話講出來/做出來）

### Forge（永久筆記必達標）
- 每張永久卡片必須回答上述 **至少 2 問**（建議：第 1 問 + 第 3 問；或第 2 問 + 第 3 問）。
- 若無法回答：先回到 `00_Pupil/00-2_Processing/` 補材料或補例子，再鑄造。

參考剪藏：[[20260311-1206-notebooklm-mit-three-questions]]（位於 `11_Clipping/`）。

## 6. 主題切換規則（強制）
- 一旦主題明顯切換：
  1) 先把前一段對話完整寫入 `12_OpenClaw_Logs/`（以 topic + timestamp 命名）
  2) 再提供前段小結（避免碎片散落）

