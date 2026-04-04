{ config, pkgs, ... }:
let
  dir = builtins.toString ./.;
in
{
  xdg.configFile."waybar".source = config.lib.file.mkOutOfStoreSymlink "${dir}/config";

  home.packages = with pkgs; [ waybar ];
}
