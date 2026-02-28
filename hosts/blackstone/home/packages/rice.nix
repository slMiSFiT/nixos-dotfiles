{ pkgs, ... }:
{
  home.packages =  with pkgs; [
    foot
    matugen
    yazi
    fuzzel
    cliphist
    wl-clipboard
    libnotify
    trash-cli
    btop
    fastfetch
    swaybg
    hypridle
    hyprlock
    hyprpolkitagent
    mako
    waypaper
    rofimoji
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];

}
