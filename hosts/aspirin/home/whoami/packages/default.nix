{ pkgs, ... }:
{
  imports = [
    ./rice.nix
    ./shell.nix
    ./tui.nix
    ./gui.nix
  ];
}
