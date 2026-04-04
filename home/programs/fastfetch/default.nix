{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ fastfetch ];

  xdg.configFile."fastfetch".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/programs/fastfetch/config/";

}
