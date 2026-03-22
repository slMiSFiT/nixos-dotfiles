{ config, ... }:

{
  home.username = "misfit";
  home.homeDirectory = "/home/misfit";
  home.stateVersion = "25.11";

  imports = [
    ./assets/symlink.nix
    ./programs
    ./services
    ./hyprland
    ./shell
    ./scripts
    ./neovim.nix
    ./theming.nix
  ];

  programs.home-manager.enable = true;

}
