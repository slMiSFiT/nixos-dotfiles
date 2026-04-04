{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ foot ];

  xdg.configFile."foot".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/programs/foot/config";
}
