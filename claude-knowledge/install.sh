#!/usr/bin/env bash
# Installs the Claude Code knowledge base into ~/.claude so EVERY Claude Code
# project on this machine can use it.
#
# Safe by design:
#   - Backs up an existing ~/.claude/CLAUDE.md before touching it.
#   - Never overwrites your own CLAUDE.md text: it adds (or refreshes) one
#     clearly marked block between BEGIN/END markers.
#   - Backs up an existing ~/.claude/knowledge folder before replacing it.
#   - Installs nothing else and changes no settings or permissions.
#
# Usage (from the repo root or anywhere):
#   bash claude-knowledge/install.sh
set -euo pipefail

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
STAMP="$(date +%Y%m%d-%H%M%S)"
BEGIN="<!-- BEGIN claude-knowledge (managed by claude-knowledge/install.sh) -->"
END="<!-- END claude-knowledge -->"

mkdir -p "$CLAUDE_DIR"

# 1) Knowledge folder
if [ -d "$CLAUDE_DIR/knowledge" ]; then
  cp -a "$CLAUDE_DIR/knowledge" "$CLAUDE_DIR/knowledge.backup-$STAMP"
  echo "Backed up existing knowledge folder -> knowledge.backup-$STAMP"
  rm -rf "$CLAUDE_DIR/knowledge"
fi
cp -a "$SRC_DIR/knowledge" "$CLAUDE_DIR/knowledge"
echo "Installed knowledge base -> $CLAUDE_DIR/knowledge"

# 2) Global CLAUDE.md (add/refresh the managed block only)
TARGET="$CLAUDE_DIR/CLAUDE.md"
BLOCK_FILE="$SRC_DIR/global/CLAUDE.md"
if [ -f "$TARGET" ]; then
  cp -a "$TARGET" "$TARGET.backup-$STAMP"
  echo "Backed up existing CLAUDE.md -> CLAUDE.md.backup-$STAMP"
  # Remove a previous managed block, keep everything else exactly as it was.
  awk -v b="$BEGIN" -v e="$END" '
    $0==b {skip=1; next}
    $0==e {skip=0; next}
    !skip {print}
  ' "$TARGET" | awk 'NF {for (i = 0; i < blank; i++) print ""; blank = 0; print; next} {blank++}' > "$TARGET.tmp"
  mv "$TARGET.tmp" "$TARGET"
  printf '\n' >> "$TARGET"
else
  : > "$TARGET"
fi
{
  echo "$BEGIN"
  cat "$BLOCK_FILE"
  echo "$END"
} >> "$TARGET"
echo "Updated $TARGET (managed block added/refreshed; your other text untouched)"

echo
echo "Done. Verify with:  head -40 \"$TARGET\"  and  ls \"$CLAUDE_DIR/knowledge\""
echo "In Claude Code, run /memory to confirm the user memory file is loaded."
