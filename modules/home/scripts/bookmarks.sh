#!/usr/bin/env bash

declare -A bookmarks=(
  ["󰊤 nixos-config remote"]="https://github.com/slMiSFiT/nixos-dotfiles"
  ["󰊤 nixos-config phoenix"]="https://github.com/Frost-Phoenix/nixos-config"
  [" Youtube"]="https://youtube.com"
  [" Twitter/X"]="https://x.com"
)

choice=$(printf '%s\n' "${!bookmarks[@]}" | sort | fuzzel --dmenu --prompt "Bookmarks > ")

[[ -n "$choice" ]] && xdg-open "${bookmarks[$choice]}"
