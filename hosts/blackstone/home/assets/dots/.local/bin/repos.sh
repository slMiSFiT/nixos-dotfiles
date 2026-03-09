 #!/usr/bin/env bash

selected=$(find ~/ -maxdepth 3 -name ".git" -type d |
  sed 's|/.git||' |
  xargs -I{} basename {} |
  fuzzel --dmenu --prompt="repos >>")

[ -z "$selected" ] && exit 0

full_path=$(find ~/ -maxdepth 3 -name "$selected" -type d | head -1)

foot --working-directory "$full_path" -e nvim .
