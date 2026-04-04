{ config, ... }:
{
  home.file."Pictures/wallpapers".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/wallpapers/dir/";
}
