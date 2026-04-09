{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/modules/home/programs/waypaper/dots";
in
{
  xdg.configFile."waypaper".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  home.packages = with pkgs; [ waypaper ];
}
