{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/home/programs/swaync/dots";
in
{
  xdg.configFile."swaync".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  home.packages = with pkgs; [ swaynotificationcenter ];
}
