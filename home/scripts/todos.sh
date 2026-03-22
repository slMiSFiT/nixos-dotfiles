#!/usr/bin/env bash

NOTES_DIR="$HOME/Sync/todos"
TMPFILE=$(mktemp)

foot --app-id "menu" -e bash -c "
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

todo="$NOTES_DIR/$selected"

[[ "$selected" != *.* ]] && todo="$todo.md"

mkdir -p "$(dirname "$todo")"

foot -T "todo" --working-directory "$NOTES_DIR" -e nvim "$todo"
