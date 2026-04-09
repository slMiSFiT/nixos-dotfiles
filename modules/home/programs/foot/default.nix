{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/modules/home/programs/foot/dots";
in
{
  xdg.configFile."foot".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  home.packages = with pkgs; [ foot ];
}
