{ config, pkgs, ... }:

{
  home.username = "whoami";
  home.homeDirectory = "/home/whoami";
  home.stateVersion = "25.11";
  imports = [
    ./services
    ./programs
    ./packages
    ./theming.nix
  ];
 
  #fonts.fontconfig.enable = true;

  home.sessionVariables = {
  };

  # Let home manager install and manage itself.
  programs.home-manager.enable = true;
}
