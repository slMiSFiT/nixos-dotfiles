#!/usr/bin/env bash

declare -A resources=(
  [" Nerd Fonts"]="https://www.nerdfonts.com/"
  ["󰊤 Github Repos"]="https://github.com/search?q=&type=repositories"
  [" NixOS Wiki"]="https://wiki.nixos.org"
  [" MyNixOS"]="https://mynixos.com/"
  [" Nix Dev"]="https://nix.dev/"
  [" HM Manual"]="https://nix-community.github.io/home-manager/"
  [" Arch Wiki"]="https://wiki.archlinux.org"
  [" Hyprland Wiki"]="https://wiki.hypr.land/"
  ["󰏓 Repology"]="https://repology.org/"
  ["󰑑 Regex101"]="https://regex101.com/"
)

choice=$(printf '%s\n' "${!resources[@]}" | sort | fuzzel --dmenu --prompt "Resources > ")

[[ -n "$choice" ]] && xdg-open "${resources[$choice]}"
