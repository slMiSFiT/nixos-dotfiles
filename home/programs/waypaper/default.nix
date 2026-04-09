{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/home/programs/waypaper/dots";
in
{
  xdg.configFile."waypaper".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  home.packages = with pkgs; [ waypaper ];
}
