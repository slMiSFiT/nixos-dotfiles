{ pkgs, ... }:
{
  services.displayManager.ly = {
    enable = true;
    x11Support = true;
    settings = {
      vi_mode = true;
      animation = "matrix";
      clock = "%d - %H:%M";
    };
  };

  programs.hyprland = {
    enable = true;
    withUWSM = false;
    portalPackage = pkgs.xdg-desktop-portal-hyprland; # xdph none git
    xwayland.enable = true;
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

  environment.systemPackages = with pkgs; [
    brightnessctl
  ];

  # For Electron apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

}
