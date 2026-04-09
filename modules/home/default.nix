{ config, ... }:

{

  imports = [
    ./programs
    ./scripts
    ./services
    ./shell
    ./wallpapers
    ./fonts.nix
    ./gtk.nix
  ];

}
