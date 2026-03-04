{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    brave
    cliphist
    foot
    fuzzel
    libnotify
    mako
    nautilus
    rofimoji
    swaybg
    swayidle
    swaylock
    waybar
    waypaper
    wl-clipboard
    yazi
    xwayland-satellite

  ];
 xdg.portal = {
    enable = true;
    extraPortals = [ 
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}
