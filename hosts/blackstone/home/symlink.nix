{ config, ... }:
let
  assets = "${config.home.homeDirectory}/nixos-dotfiles/hosts/blackstone/home/assets";
  lnAssets = path: config.lib.file.mkOutOfStoreSymlink "${assets}/${path}";
in {
  home.file = {
    "Pictures/Wallpapers".source = lnAssets "/Wallpapers";
    ".config/niri".source = lnAssets "dots/.config/niri";
    ".config/hypr".source = lnAssets "dots/.config/hypr";
    ".config/fastfetch".source = lnAssets "dots/.config/fastfetch";
    ".config/matugen".source = lnAssets "dots/.config/matugen";
    ".config/waypaper".source = lnAssets "dots/.config/waypaper";
    ".config/mako".source = lnAssets "dots/.config/mako";
    ".newsboat".source = lnAssets "dots/.newsboat";
    ".config/lazygit".source = lnAssets "dots/.config/lazygit";
    ".config/nvim".source = lnAssets "dots/.config/nvim";
    ".config/foot".source = lnAssets "dots/.config/foot";
    ".config/yazi".source = lnAssets "dots/.config/yazi";
    ".config/btop".source = lnAssets "dots/.config/btop";
    ".config/fuzzel".source = lnAssets "dots/.config/fuzzel";
    ".config/swayidle".source = lnAssets "dots/.config/swayidle";
    ".config/swaylock".source = lnAssets "dots/.config/swaylock";
  };
}
