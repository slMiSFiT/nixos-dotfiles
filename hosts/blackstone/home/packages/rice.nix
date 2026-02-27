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
   # Niri
    xwayland-satellite
    swaybg
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    gnome-keyring
    hyprlock
    hyprpolkitagent
    hypridle
  ];
}
