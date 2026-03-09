#!/usr/bin/env bash

NOTES_DIR="$HOME/Sync/notes"
TMPFILE=$(mktemp)

foot -T "notes" -e bash -c "
  fd -t f . '$NOTES_DIR' |
  sed 's|$NOTES_DIR/||' |
  fzf --prompt='Notes > ' \
      --print-query \
      --preview='bat --color=always --style=plain $NOTES_DIR/{}' \
      --preview-window='right:60%:wrap' \
      --bind='enter:accept' |
  tail -1 > '$TMPFILE'
"

selected=$(cat "$TMPFILE")
rm "$TMPFILE"

[ -z "$selected" ] && exit 0

note="$NOTES_DIR/$selected"

[[ "$selected" != *.* ]] && note="$note.md"

mkdir -p "$(dirname "$note")"

foot -T "notes" --working-directory "$NOTES_DIR" -e nvim "$note"
