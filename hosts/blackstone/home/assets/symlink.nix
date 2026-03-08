{ config, ... }:
let
  assets = "${config.home.homeDirectory}/.nixos/hosts/blackstone/home/assets";
  lnAssets = path: config.lib.file.mkOutOfStoreSymlink "${assets}/${path}";
in
{
  home.file = {
    "Pictures/Wallpapers".source = lnAssets "/wallpapers";
    ".config/hypr".source = lnAssets "dots/.config/hypr";
    ".config/niri".source = lnAssets "dots/.config/niri";
    ".config/fuzzel".source = lnAssets "dots/.config/fuzzel";
    ".config/fastfetch".source = lnAssets "dots/.config/fastfetch";
    ".config/btop".source = lnAssets "dots/.config/btop";
    ".config/foot".source = lnAssets "dots/.config/foot";
    ".config/yazi".source = lnAssets "dots/.config/yazi";
    ".config/waybar".source = lnAssets "dots/.config/waybar";
    ".config/nvim".source = lnAssets "dots/.config/nvim";
    ".config/swaylock".source = lnAssets "dots/.config/swaylock";
    ".config/mako".source = lnAssets "dots/.config/mako";
    ".config/waypaper".source = lnAssets "dots/.config/waypaper";
  };
}
