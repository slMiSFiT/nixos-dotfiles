{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/home/programs/fastfetch/dots";
in
{
  xdg.configFile."fastfetch".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  home.packages = with pkgs; [ fastfetch ];
}
