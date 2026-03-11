{ pkgs, ... }:
{
  # Display Manager
  services.displayManager.ly = {
    enable = true;
    x11Support = true;
    settings = {
      vi_mode = true;
      #animation = "matrix";
      clock = "%d - %H:%M";
    };
  };

  # WM/DE
  programs.hyprland = {
    enable = true;
    withUWSM = false;
    portalPackage = pkgs.xdg-desktop-portal-hyprland; # xdph none git
    xwayland.enable = true;
  };
  # security and permissions
  security.polkit.enable = true;
  security.pam.services.hyprlock = { };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      xfce4-exo
      thunar-archive-plugin
      thunar-volman
      tumbler
    ];
  };

  # For Electron apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
