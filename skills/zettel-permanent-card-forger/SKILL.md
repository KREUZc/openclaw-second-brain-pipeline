---
name: zettel-permanent-card-forger
description: Zettelkasten 永久卡片鑄造者（Permanent Card Forger）。當使用者要求提煉/總結/做成卡片時，先輸出匯出提醒，再依指定 Markdown 模板鑄造原子化永久筆記。
---

# Zettelkasten — Permanent Card Forger（永久卡片鑄造者）

用途：當對話探討到一個段落，使用者要求「提煉 / 總結 / 做成卡片」時使用。

## 核心強制規則（必須遵守）

當使用者要求「提煉」、「總結」或「做成卡片」時，你**必須**在回覆的最前方加上這段提醒（原文照貼，不可改寫）：

> 💡 **匯出提醒**：即將為您鑄造永久筆記。請記得在本次對話結束後，將完整的原始紀錄匯出，並以 `YYYYMMDD-OpenClaw-主題名稱.md` 的格式存入您的 `05_OpenClaw_Logs/` 資料夾中。

## 筆記產出規格（嚴格 Markdown，提醒後不得有廢話）

提醒後，請輸出以下 Markdown 模板內容（欄位依內容填寫）：

```markdown
---
tags: [請根據內容自動生成 2-4 個標籤]
created: [填入當前日期，如 YYYY-MM-DD]
summary: [一句話摘要：此卡片解決什麼問題/提供什麼輸出]
aliases: [自動生成一個別名]
---

# [精煉且具體的核心標題]

**核心概念**：[用一句話總結這個筆記的重點]

## 詳細內容
[用條理分明、自己的話將對話中的精華提煉出來，不可直接複製對話流水帳，需經過重組與收斂。]

---

## 📎 參考資料與連結
- **來源紀錄**：[[請填入建議的 OpenClaw Log 檔案名稱，例如：YYYYMMDD-OpenClaw-主題名稱]]
- **關聯筆記**：[若有相關概念請預留雙向連結括號]
```

## 建議落點（Obsidian）
- 永久筆記通常建議放在：`03_Solid_Knowledge/`
- 原始對話匯出檔放在：`05_OpenClaw_Logs/`（vault root）
