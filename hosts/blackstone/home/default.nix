{ config, pkgs, ... }:

{
  home.username = "misfitgoy";
  home.homeDirectory = "/home/misfitgoy";
  home.stateVersion = "25.11";

  imports = [
    ./services
    ./packages
    ./shell.nix
    ./assets/symlink.nix
  ];
 
  fonts.fontconfig.enable = true;

  # Let home manager install and manage itself.
  programs.home-manager.enable = true;
}
