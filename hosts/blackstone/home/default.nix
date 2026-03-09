{ config, ... }:

{
  home.username = "misfit";
  home.homeDirectory = "/home/misfit";
  home.stateVersion = "25.11";

  imports = [
    ./programs
    ./services
    ./desktop.nix
    ./neovim.nix
    ./cli
    ./assets/symlink.nix
    ./assets/scripts.nix
  ];

  fonts.fontconfig.enable = true;

  programs.home-manager.enable = true;

}
