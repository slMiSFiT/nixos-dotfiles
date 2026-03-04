{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # keep it in order
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

  services.polkit-gnome.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ 
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = "*";
  };
}
