{ config, pkgs, ... }:
{

  xdg.configFile."hypr".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/programs/hypr/config";

  services.hyprpolkitagent.enable = true;
  services.cliphist.enable = true;

  home.packages = with pkgs; [
    # keep it in order
    brave
    cliphist
    cmatrix
    fastfetch
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
    mpv
  ];

}
