{ config, ... }:

{
  home.username = "misfit";
  home.homeDirectory = "/home/misfit";
  home.stateVersion = "25.11";

  imports = [
    ./programs
    ./services
    ./hyprland
    ./neovim.nix
    ./cli
    ./assets/symlink.nix
    ./scripts
  ];

  fonts.fontconfig.enable = true;

  programs.home-manager.enable = true;

}
