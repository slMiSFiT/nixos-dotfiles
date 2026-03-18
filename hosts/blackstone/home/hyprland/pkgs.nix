{ pkgs, ... }:
{
  stylix.targets.hyprland.enable = false;
  home.packages = with pkgs; [
    # keep it in order
    bluetui
    btop
    brave
    chafa
    cliphist
    cmatrix
    discord
    fastfetch
    foot
    fuzzel
    gammastep
    grim
    grimblast
    slurp
    swaynotificationcenter
    keepassxc
    libnotify
    mako
    rofimoji
    trash-cli
    waybar
    waypaper
    #wl-clipboard
    wl-clip-persist
    yazi
    hyprlock
    hypridle
    hyprpaper
    mpv
    # Virtuaizaiton
    #virt-viewer
    #libvirt
  ];

  services.hyprpolkitagent.enable = true;
  services.cliphist.enable = true;
  programs.cava.enable = true;

}
