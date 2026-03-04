#!/usr/bin/env bash

declare -A bookmarks=(
  ["󰊤 GitHub"]="https://github.com/slMiSFiT"
  ["  NixOS Wiki"]="https://wiki.nixos.org"
  ["  Arch Wiki"]="https://wiki.archlinux.org"
  ["  HM Manual"]="https://nix-community.github.io/home-manager/"
  ["  Hyprland Wiki"]="https://wiki.hyprland.org"
  ["  Niri Wiki"]="https://niri-wm.github.io/"
  ["  Reddit"]="https://reddit.com"
  ["  YouTube"]="https://youtube.com"
)

choice=$(printf '%s\n' "${!bookmarks[@]}" | sort | fuzzel --dmenu --prompt "   bookmarks  ")

[[ -n "$choice" ]] && xdg-open "${bookmarks[$choice]}"
