{ config, pkgs, ... }:
let
  dir = builtins.toString ./.;
in
{

  xdg.configFile."hypr".source = config.lib.file.mkOutOfStoreSymlink "${dir}/config";

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
    hyprlock
    hypridle
    hyprpaper
  ];

}
