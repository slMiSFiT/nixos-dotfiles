{ pkgs, ... }:
{
  stylix.targets.hyprland.enable = false;
  home.packages = with pkgs; [
    # keep it in order
    btop
    brave
    cliphist
    fastfetch
    feh
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
    #wl-clip-persist
    wl-clipboard
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
    # Internet
    discord

  ];

  services.cliphist.enable = true;

}
