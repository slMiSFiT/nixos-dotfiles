{ pkgs, ... }:
{

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.displayManager.ly = {
    enable = true;
    settings = {
      vi_mode = true;
      #animation = "matrix";
      clock = "%d - %H:%M";
    };
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
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

  services.gvfs.enable = true; # Mount, trash, and other functionalities
  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      thunar-archive-plugin
      thunar-volman # Automatic management of removable devices
      tumbler # generate thumbnails
    ];
  };

  # For Electron apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
