{ config, pkgs, ... }:

{
  home.username = "misfit";
  home.homeDirectory = "/home/misfit";
  home.stateVersion = "25.11";
  imports = [
    ./services
    ./programs
    ./packages
    ./dots.nix
  ];
 
  fonts.fontconfig.enable = true;

  home.sessionVariables = {
    # hint Electron apps to use Wayland:
    NIXOS_OZONE_WL = "1";
  };

  # Let home manager install and manage itself.
  programs.home-manager.enable = true;
}
