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
    ./theming.nix
  ];

  programs.home-manager.enable = true;

}
