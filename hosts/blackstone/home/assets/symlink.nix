{ config, ... }:
let
  assets = "${config.home.homeDirectory}/.nixos/hosts/blackstone/home/assets";
  lnAssets = path: config.lib.file.mkOutOfStoreSymlink "${assets}/${path}";
in
{
  home.file = {
    "Pictures/Wallpapers".source = lnAssets "/wallpapers";
    ".config/hypr".source = lnAssets "dotfiles/hypr";
    ".config/fuzzel".source = lnAssets "dotfiles/fuzzel";
    ".config/fastfetch".source = lnAssets "dotfiles/fastfetch";
    ".config/btop".source = lnAssets "dotfiles/btop";
    ".config/foot".source = lnAssets "dotfiles/foot";
    ".config/yazi".source = lnAssets "dotfiles/yazi";
    ".config/waybar".source = lnAssets "dotfiles/waybar";
    ".config/nvim".source = lnAssets "dotfiles/nvim";
    ".config/swaync".source = lnAssets "dotfiles/swaync";
    ".config/mako".source = lnAssets "dotfiles/mako";
    ".config/waypaper".source = lnAssets "dotfiles/waypaper";
    ".config/rmpc".source = lnAssets "dotfiles/rmpc";
  };
}
