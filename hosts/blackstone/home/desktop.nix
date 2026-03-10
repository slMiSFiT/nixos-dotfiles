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
    hyprpolkitagent
    hyprlock
    hyprpaper
    mpv
    # Virtuaizaiton
    #virt-viewer
    #libvirt
  ];

  services.cliphist.enable = true;

}
