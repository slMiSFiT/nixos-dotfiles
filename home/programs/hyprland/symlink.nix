{ config, ... }:
let
  assets = "${config.home.homeDirectory}/.nixos-config/home/programs/hyprland";
  lnAssets = path: config.lib.file.mkOutOfStoreSymlink "${assets}/${path}";
in
{
  home.file = {
    "Pictures/wallpapers".source = lnAssets "/wallpapers";
    ".config/hypr".source = lnAssets "dotfiles/hypr";
    ".config/fuzzel".source = lnAssets "dotfiles/fuzzel";
    ".config/fastfetch".source = lnAssets "dotfiles/fastfetch";
    ".config/foot".source = lnAssets "dotfiles/foot";
    ".config/yazi".source = lnAssets "dotfiles/yazi";
    ".config/waybar".source = lnAssets "dotfiles/waybar";
    ".config/nvim".source = lnAssets "dotfiles/nvim";
    ".config/rmpc".source = lnAssets "dotfiles/rmpc";
  };

}
