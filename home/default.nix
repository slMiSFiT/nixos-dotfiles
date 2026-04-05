{ config, ... }:

{
  home.username = "misfit";
  home.homeDirectory = "/home/misfit";
  home.stateVersion = "25.11";

  imports = [
    ./programs
    ./scripts
    ./services
    ./shell
    ./wallpapers
    ./fonts.nix
    ./gtk.nix
  ];

  programs.home-manager.enable = true;

}
