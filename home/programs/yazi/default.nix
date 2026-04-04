{ config, pkgs, ... }:
let
  dir = builtins.toString ./.;
in
{

  xdg.configFile."yazi".source = config.lib.file.mkOutOfStoreSymlink "${dir}/config";

  home.packages = with pkgs; [ yazi ];
}
