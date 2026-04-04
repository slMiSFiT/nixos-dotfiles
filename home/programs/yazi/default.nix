{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ yazi ];

  xdg.configFile."yazi".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/programs/yazi/config";
}
