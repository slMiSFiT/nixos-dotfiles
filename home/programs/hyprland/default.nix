{ pkgs, ... }:
{

  imports = [
    ./symlink.nix
    ./swaync
    ./waypaper.nix
  ];

  services.hyprpolkitagent.enable = true;
  services.cliphist.enable = true;

  home.packages = with pkgs; [
    # keep it in order
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
    keepassxc
    rofimoji
    trash-cli
    waybar
    wl-clipboard
    wl-clip-persist
    yazi
    hyprlock
    hypridle
    hyprpaper
    mpv
  ];

}
