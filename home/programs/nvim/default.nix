{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/.nixos-config/home/programs/nvim/dots";
in
{
  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
  };

  home.packages = with pkgs; [
    # Lsps
    nixd
    # Formatters
    stylua
    shfmt
    prettier
    treefmt
    nixfmt
    hyprlang
  ];

}
