{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/home/programs/waybar/dots";
in
{
  xdg.configFile."waybar".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  home.packages = with pkgs; [ waybar ];
}
