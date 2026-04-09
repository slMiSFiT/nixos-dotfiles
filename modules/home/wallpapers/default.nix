{ config, ... }:
let
  dir = "${config.home.homeDirectory}/.nixos-config/modules/home/wallpapers/dir";
in
{
  home.file."Pictures/wallpapers".source = config.lib.file.mkOutOfStoreSymlink "${dir}";
}
