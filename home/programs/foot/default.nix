{ config, pkgs, ... }:
let
  dir = builtins.toString ./.;
in
{
  xdg.configFile."foot".source = config.lib.file.mkOutOfStoreSymlink "${dir}/config";

  home.packages = with pkgs; [ foot ];
}
