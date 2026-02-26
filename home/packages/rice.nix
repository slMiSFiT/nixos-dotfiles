{ pkgs, ... }:
{
  home.packages =  with pkgs; [
    foot
    matugen
    yazi
    fuzzel
    cliphist
    libnotify
    trash-cli
    adw-gtk3
    nwg-look
    adwaita-icon-theme
    dejavu_fonts
    nerd-fonts.jetbrains-mono
    btop
    fastfetch
# Niri
    xwayland-satellite
    swaybg
# Hyprland
    #hyprpaper
    hyprlock
    #hyprpolkitagent # hyprland
    #hypridle
    #hyprsunset
    #waybar
    #kitty
    #rofi
    #rofimoji
  ];
}
