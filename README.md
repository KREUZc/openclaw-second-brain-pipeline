# openclaw-second-brain-pipeline

把「想法」變成「可執行的資產」：一套可發佈、可長期維運的 Obsidian 第二大腦流水線（capture → triage → distill → forge → index），並附帶可直接搭配 OpenClaw 使用的技能（skills）。

> 目標：你只要專注輸入與決策；系統負責把內容落地、可回溯、可檢索、可自動化。

## 這個 repo 適合誰
- 你想要一個**不會越用越亂**的 Obsidian vault 骨架（命名規範、SSOT、MOC、runbook/spec 分工）
- 你想把 AI 變成「有流程、有紀錄、有邊界」的代理執行層，而不是聊天機器
- 你想要把 workflow 分享給團隊或社群，但又不想外流任何私人資料

## Repo 內容
- `vault/` — 乾淨的 Obsidian vault 模板（純 Markdown，無私密內容）
- `skills/` — 實作 pipeline 的技能快照（Spark Catcher / Permanent Card Forger / Diary writer）

## Pipeline（你會得到什麼）
1) **Capture**：把連結、想法、素材先接住（不要求完美）
2) **Triage**：把輸入分流成 clipping / inbox / logs
3) **Distill**：抽出可用的重點（避免把長文塞進總覽）
4) **Forge**：鑄造成原子化「永久筆記」
5) **Index**：用 MOC + Dataview 查詢把知識變成可導航的地圖

## 強規則（Hard Rules，一看就會用）
- Permanent Notes 固定落點：`03_Solid_Knowledge/03-1_Permanent_Notes/`
- `00_Pupil/00-1_Inbox/` **永不刪除**（保留所有原始 idea）；延伸討論/整理一律用「複製」到 Processing 或 Logs
- 附件（圖片等）放在同層 `asset/`，並用 Obsidian embed：`![[asset/xxx.jpg]]`

### YAML frontmatter 必填（按類型）
- Permanent Notes：`tags`（2–4 個足夠）
- runbook-*：`scope`、`owner: mycrew`
- spec-*：`dod`、`status: draft|active|done`
- Logs：`tags`（2–4 個足夠），建議加 `created`、`summary`

> 更完整的規範請看：`vault/99_Meta/SecondBrain-Protocol.md`

## Quickstart（最快落地）
1) 安裝 Obsidian（桌面版）
2) 直接把 `vault/` 複製成你的新 vault（或合併進既有 vault）
   - **重要**：請你的 OpenClaw（或 main agent）先讀 `vault/99_Meta/SecondBrain-Protocol.md`，把硬規則與落點吃進去，再開始產出。
3) 打開 `vault/99_Meta/MOC/moc-ai-automation.md` 當首頁
4) 依你的工作流逐步加 runbook/spec，而不是先把目錄塞滿

## Skills（附帶技能）
- `zettel-spark-catcher/`：接住「新想法」，先問 2–3 個關鍵問題深化，並保留 raw inbox
- `zettel-permanent-card-forger/`：把素材鑄造成原子化永久筆記（要求 tags 2–4，包含 summary）
- `mycrew-diary-skill/`：日記生成器（腳本支援用環境變數 `VAULT` 指定 vault root）

> 注意：此 repo 內 skills 是「可發佈快照」，不會改動你本機正在運作的 production skills。

## 我們克服的問題（Troubleshooting）

這套第二大腦不是「多一堆資料夾」而已；它針對我們實際踩過的坑，提供一組可重複的解法。
下面每一題都是我們遇過的真問題，並對應到 pipeline 的某個設計決策。

### Q1：我們以前常遇到「同一個想法/討論，每次都放在不同地方」怎麼解？
**A：第二大腦用『證據鏈 + 版本承接』解決：**
- **Capture（證據鏈）**：原始想法只落一次在 `00_Pupil/00-1_Inbox/`，永不刪除。
- **Triage / Distill（版本承接）**：延伸討論/整理不改原檔；一律「複製」到 `00-2_Processing/` 或寫入 `12_OpenClaw_Logs/`。
- 好處：你永遠找得到「最初那句話」，也找得到後續演進。

### Q2：不同專案/不同人都有不同分類方法，最後會變成一團亂？
**A：第二大腦把「分類」拆成可控的三層，讓每個專案都能共用同一套規則：**
- **Index 的第一層：位置（folder）＝狀態/用途**（Inbox / Processing / Logs / Permanent / Runbook / Spec）。這讓『放哪裡』是客觀的。
- **Index 的第二層：tags（2–4）＝主題**。這讓『談什麼』不會被專案結構綁死。
- **Index 的第三層：MOC + Dataview＝聚合/入口**。這讓『怎麼找回來』可查詢、可看板化。

換句話說：專案可以不同，但「落點規則」與「檢索方式」必須一致。

### Q3：我到底要寫 runbook 還是 spec，常常搞混？
- **runbook**：怎麼做（操作手冊 / 驗證 / 排錯）。必填：`scope`, `owner: mycrew`
- **spec**：要做什麼、做到什麼程度（需求 / DoD / 狀態）。必填：`dod`, `status`

### Q4：為什麼要強制 YAML frontmatter？不能只用標題嗎？
**A：為了讓 Dataview 能查詢**（看板、清單、自動聚合），而且讓不同專案可以用同一套檢索方式。

### Q5：我改資料夾大小寫改名（例如 Foo → foo）為什麼會出事？
macOS 常見是大小寫不敏感檔案系統，case-only rename 可能造成搬移/覆寫/遺失。
- **原則：不要只改大小寫**；要改請改成不同字串或用兩段式中繼搬移。

### Q6：圖片/附件放哪裡才不會斷鏈？
- 與該 md 同層建立 `asset/`
- 用 Obsidian 內嵌：`![[asset/filename.jpg]]`

### Q7：我要怎麼看懂這個Vault？
- 📂 Vault 目錄結構與彈性擴充
這套 Vault 提供的是一個「骨架」，我們刻意留下了編號的空白，讓你可以自由長出屬於你的血肉。

* `00_Pupil/`：漏斗層。包含永不刪除的 `00-1_Inbox` 與加工中的 `00-2_Processing`。
* `03_Solid_Knowledge/`：知識庫層。存放提煉後的 `03-1_Permanent_Notes`。
* `12_OpenClaw_Logs/`：AI 的軌跡紀錄。
* `20_Runbooks`, `21_Crew_Own_Projects`：2X是AI作業的區段編號。AI 運作的Skills放在它系統的資料夾，但原始spec及可讀的runbooks仍在「第二大腦」中。
* `99_Meta/`：系統層。包含 MOC、Runbooks、Specs 與腳本。

**💡 留白的編號，就是你的自由空間：**
你可以利用斷號自由擴充你的專案或生活領域。例如：
* 新增 `01_Master_Projects/` 來管理你的主力專案（如：OpenClaw 開發、Tide 社交 App 開發、或是《Rational Gain》寫作計畫）。
* 新增 `02_Family_Diary/` 來記錄生活點滴與家庭日誌。

### Q8：領域越來越多，永久筆記怎麼分得更清楚？
- 🛠️ 極度自由的客製化：讓 AI 自己改寫規則
第二大腦是非常私人的習慣。如果你覺得預設的分類不合胃口，或者你想把永久卡片依照主題存進不同的資料夾，**你不需要自己動手改 Code！**

這套系統的核心精神是「AI 代理」。你只需要直接對你的 AI Assistant（例如你的 OpenClaw Agent）下達自然語言指令：
> _「請幫我修改 `Permanent Card Forger` 這個技能。以後寫入永久卡片時，如果標籤包含 #Tech，就幫我存進 `03-1_Permanent_Notes/Tech` 目錄下。」_

AI 就會自動去修改對應的腳本路徑與寫入規則。你的大腦只負責制定規則，剩下的勞力活全交給 AI！


## 不用 Obsidian 也能運作
這套系統的核心是**檔案系統上的 Markdown + YAML frontmatter + 資料夾規範**。因此即使你不用 Obsidian，也可以照樣使用 skills 與 pipeline。

Obsidian（links / MOC / Dataview）主要是加分層：讓你更容易瀏覽、檢索與看板化，不是必要依賴。

## Safety / Privacy
此 repo **不包含**：logs、clippings、憑證、帳號、token、或任何絕對路徑。

## License
MIT License（詳見 `LICENSE`）

---
English version: `README.en.md`
