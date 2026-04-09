{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/home/programs/hyprland/dots";
in
{

  xdg.configFile."hypr".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  services.hyprpolkitagent.enable = true;
  services.cliphist.enable = true;

  home.packages = with pkgs; [
    # keep it in order
    cmatrix
    gammastep
    grim
    grimblast
    slurp
    keepassxc
    rofimoji
    trash-cli
    wl-clipboard
    wl-clip-persist
    wl-screenrec
    hyprlock
    hypridle
    hyprpaper
  ];

}
