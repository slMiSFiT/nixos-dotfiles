{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ swaynotificationcenter ];

  xdg.configFile."swaync".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/programs/swaync/config";
}
