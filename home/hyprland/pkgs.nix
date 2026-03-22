{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # keep it in order
    btop
    brave
    cliphist
    cmatrix
    fastfetch
    foot
    fuzzel
    gammastep
    grim
    grimblast
    slurp
    swaynotificationcenter
    keepassxc
    rofimoji
    trash-cli
    waybar
    waypaper
    wl-clipboard
    wl-clip-persist
    yazi
    hyprlock
    hypridle
    hyprpaper
    mpv
  ];

  services.hyprpolkitagent.enable = true;
  services.cliphist.enable = true;
  programs.cava.enable = true;

}
