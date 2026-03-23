{ pkgs, ... }:
{
  # Display Manager
  services.displayManager.ly = {
    enable = true;
    settings = {
      vi_mode = true;
      #animation = "matrix";
      clock = "%d - %H:%M";
    };
  };

  # WM/DE
  programs.hyprland = {
    enable = true;
  };

  security.pam.services.hyprlock = { };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    config = {
      common.default = [ "gtk" ];
      hyprland.default = [
        "gtk"
        "hyprland"
      ];
    };

    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
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
