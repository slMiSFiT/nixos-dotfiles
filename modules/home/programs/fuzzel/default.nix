{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/modules/home/programs/fuzzel/dots";
in
{
  xdg.configFile."fuzzel".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  home.packages = with pkgs; [ fuzzel ];
}
