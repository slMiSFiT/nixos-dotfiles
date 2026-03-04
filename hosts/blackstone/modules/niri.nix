{ pkgs, ... }:

{
  programs.niri.enable = true;
  users.users.misfitgoy.packages = with pkgs; [
    xwayland-satellite
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];
}
