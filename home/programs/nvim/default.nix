{ config, pkgs, ... }:
let
  dir = builtins.toString ./.;
in
{
  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink "${dir}/config";

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
