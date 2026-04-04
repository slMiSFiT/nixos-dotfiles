{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ waypaper ];

  xdg.configFile."waypaper".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/programs/waypaper/config";

}
