{ config, ... }:
let
  assets = "${config.home.homeDirectory}/.nixos/hosts/blackstone/home/assets";
  lnAssets = path: config.lib.file.mkOutOfStoreSymlink "${assets}/${path}";
in
{
  home.file = {
    "Pictures/Wallpapers".source = lnAssets "/wallpapers";
    ".config/hypr".source = lnAssets "dots/hypr";
    ".config/fuzzel".source = lnAssets "dots/fuzzel";
    ".config/fastfetch".source = lnAssets "dots/fastfetch";
    ".config/btop".source = lnAssets "dots/btop";
    ".config/foot".source = lnAssets "dots/foot";
    ".config/yazi".source = lnAssets "dots/yazi";
    ".config/waybar".source = lnAssets "dots/waybar";
    ".config/nvim".source = lnAssets "dots/nvim";
    ".config/swaylock".source = lnAssets "dots/swaylock";
    ".config/mako".source = lnAssets "dots/mako";
    ".config/waypaper".source = lnAssets "dots/waypaper";
  };
}
