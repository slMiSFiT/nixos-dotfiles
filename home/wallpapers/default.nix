{ config, ... }:
let
  dir = "${config.home.homeDirectory}/.nixos-config/home/wallpapers/dir";
in
{
  home.file."Pictures/wallpapers".source = config.lib.file.mkOutOfStoreSymlink "${dir}";
}
