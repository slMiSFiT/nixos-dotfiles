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
    # Lsp
    nixd
    #nil
    # Formatters
    stylua
    prettier
    nixfmt
    hyprlang
  ];

}
