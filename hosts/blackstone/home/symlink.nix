{ config, ... }:
let
  assets = "${config.home.homeDirectory}/nixos-dotfiles/hosts/blackstone/home/assets";
  lnAssets = path: config.lib.file.mkOutOfStoreSymlink "${assets}/${path}";
in {
  home.file."Pictures/Wallpapers".source = lnAssets "/Wallpapers";
  home.file.".config/niri".source = lnAssets "dots/.config/niri";
  home.file.".config/fastfetch".source = lnAssets "dots/.config/fastfetch";
  home.file.".config/matugen".source = lnAssets "dots/.config/matugen";
  home.file.".newsboat".source = lnAssets "dots/.newsboat";
  home.file.".config/lazygit".source = lnAssets "dots/.config/lazygit";
  home.file.".config/nvim".source = lnAssets "dots/.config/nvim";
  home.file.".config/foot".source = lnAssets "dots/.config/foot";
  home.file.".config/yazi".source = lnAssets "dots/.config/yazi";
  home.file.".config/btop".source = lnAssets "dots/.config/btop";
  home.file.".config/fuzzel".source = lnAssets "dots/.config/fuzzel";
  home.file.".config/qutebrowser".source = lnAssets "dots/.config/qutebrowser";

}

