#!/usr/bin/env bash
set -euo pipefail

# Vault root
# - Default: the sample vault shipped with this repo (../vault relative to repo root)
# - Override: export VAULT=/path/to/your/own/vault
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"
VAULT="${VAULT:-$REPO_ROOT/vault}"
OUTDIR="$VAULT/21_Crew_Own_Projects/mycrew-diary"
TS_TAIPEI=$(TZ="Asia/Taipei" date +%Y%m%d)
OUTFILE="$OUTDIR/${TS_TAIPEI}-0400-mycrew-diary.md"

mkdir -p "$OUTDIR"

# Collect last-24h material (keep it small)
SINCE_EPOCH=$(python3 - <<'PY'
import time
print(int(time.time())-24*3600)
PY
)

collect_file_snips() {
  local dir="$1"
  find "$dir" -type f \( -name "*.md" -o -name "*.txt" \) 2>/dev/null | while read -r f; do
    local m
    m=$(stat -f %m "$f" 2>/dev/null || echo 0)
    if [ "$m" -ge "$SINCE_EPOCH" ]; then
      echo "\n---\nFILE: $f\n---"
      tail -n 120 "$f" 2>/dev/null || true
    fi
  done
}

MATERIAL=$(mktemp)
{
  echo "# MATERIAL (last 24h, tails)"
  collect_file_snips "$VAULT/12_OpenClaw_Logs"
  collect_file_snips "$VAULT/00_Pupil/00-1_Inbox"
  collect_file_snips "$VAULT/11_Clipping"
  collect_file_snips "$VAULT/10_Social_Ops" 
} > "$MATERIAL"

PROMPT_FILE=$(mktemp)
cat > "$PROMPT_FILE" <<'EOF'
Write a daily diary note in Traditional Chinese.

Requirements:
- Write as first-person "mycrew".
- Use Obsidian Markdown and include YAML frontmatter at the top:
  tags: [Diary, mycrew, SecondBrain]
  created: YYYY-MM-DD (Asia/Taipei)
  aliases: [mycrew diary YYYYMMDD]
- Cornell-ish structure:
  1) Cues / Questions (3-7 bullets)
  2) Notes (chronological, concise)
  3) Summary (5-8 lines)
  4) Next actions (3-7 checkboxes)
- Mention key work streams:
  - Silent Gallery / EyeCare extension progress
  - Second brain / vault protocol updates
  - Any notable tool/infra changes (codex/gog/etc)
- If the material is sparse, state that explicitly.
- Do NOT invent events that are not in MATERIAL.

Use MATERIAL below as the only source of truth.
EOF

# Run Codex non-interactively; output last message to file
TMP_OUT=$(mktemp)
{
  cat "$PROMPT_FILE"
  echo
  echo "MATERIAL:"
  cat "$MATERIAL"
} | codex exec --skip-git-repo-check --sandbox read-only -o "$TMP_OUT" - >/dev/null

# Write final
cat "$TMP_OUT" > "$OUTFILE"

echo "WROTE $OUTFILE"
