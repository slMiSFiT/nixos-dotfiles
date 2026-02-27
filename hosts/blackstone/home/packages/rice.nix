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
    nwg-look
    btop
    fastfetch
    swaybg
    swayidle
    swaylock
    hyprpolkitagent
    mako
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    gnome-keyring
  ];
}
