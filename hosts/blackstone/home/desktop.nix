{ pkgs, ... }:
{
  stylix.targets.hyprland.enable = false;
  home.packages = with pkgs; [
    # keep it in order
    btop
    brave
    chafa
    cliphist
    discord
    fastfetch
    #feh
    foot
    fuzzel
    grim
    grimblast
    slurp
    keepassxc
    libnotify
    localsend
    mako
    rofimoji
    trash-cli
    waybar
    waypaper
    wl-clipboard
    #wl-clip-persist
    yazi
    pyprland
    hypridle
    hyprpaper
    mpv
    # Virtuaizaiton
    #virt-viewer
    #libvirt
  ];

  services.hyprpolkitagent.enable = true;
  services.cliphist.enable = true;

}
