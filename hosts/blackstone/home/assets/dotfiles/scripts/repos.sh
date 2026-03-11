#!/usr/bin/env bash

TMPFILE=$(mktemp)

foot -T "repos" -e bash -c "
  fd -t d -H '^\.git$' ~/ --max-depth 3 |
  sed 's|/\.git/*$||' |
  xargs -I{} stat --format='%Y %n' '{}' |
  sort -rn |
  awk '{print \$2}' |
  sed 's|$HOME/||' |
  fzf --prompt='Repos > ' \
      --preview='eza --tree --level=2 --color=always \$HOME/{}' \
      --preview-window='right:60%:wrap' > '$TMPFILE'
"

selected=$(cat "$TMPFILE")
rm "$TMPFILE"

[ -z "$selected" ] && exit 0

repo=$(basename "$selected")

foot -T "$repo" --working-directory "$HOME/$selected" -e yazi .
