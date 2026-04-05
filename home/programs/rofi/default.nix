{ config, pkgs, ... }:
let
  dir = builtins.toString ./.;
in
{
  xdg.configFile."rofi".source = config.lib.file.mkOutOfStoreSymlink "${dir}/config";

  home.packages = with pkgs; [ rofi ];
}
