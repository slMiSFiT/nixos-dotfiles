{ config, pkgs, ... }:
let
  dir = builtins.toString ./.;
in
{
  xdg.configFile."fuzzel".source = config.lib.file.mkOutOfStoreSymlink "${dir}/config";

  home.packages = with pkgs; [ fuzzel ];
}
