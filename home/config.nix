{ config, ... }:
let
  dots = "${config.home.homeDirectory}/nixos-dotfiles/home/dots";
  lnDots = path: config.lib.file.mkOutOfStoreSymlink "${dots}/${path}";
in {
  home.file."Pictures/Wallpapers".source = lnDots "/Wallpapers";
  home.file.".config/niri".source = lnDots "/.config/niri";
  home.file.".config/git".source = lnDots "/.config/git";
  home.file.".config/fastfetch".source = lnDots "/.config/fastfetch";
  home.file.".config/matugen".source = lnDots "/.config/matugen";
  home.file.".newsboat".source = lnDots "/.newsboat";
  home.file.".config/lazygit".source = lnDots "/.config/lazygit";
  home.file.".config/nvim".source = lnDots "/.config/nvim";
  home.file.".config/foot".source = lnDots "/.config/foot";
  home.file.".config/yazi".source = lnDots "/.config/yazi";
  home.file.".config/btop".source = lnDots "/.config/btop";
  home.file.".config/rofi".source = lnDots "/.config/rofi";
  home.file.".config/fuzzel".source = lnDots "/.config/fuzzel";
  home.file.".config/qutebrowser".source = lnDots "/.config/qutebrowser";
  #home.file.".config/rofimoji.rc".source = lnDots "/.config/rofimoji.rc";
  #home.file.".zshrc".source = lnDots ".zshrc";

  # stylix work
  #home.file.".config/mako".source = lnDots "/.config/mako";
  #home.file.".config/starship.toml".source = lnDots "/.config/starship.toml";

  # uncomment its pkgs
  home.file.".config/hypr".source = lnDots "/.config/hypr";
}

