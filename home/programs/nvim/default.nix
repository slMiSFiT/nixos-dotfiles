{ config, pkgs, ... }:
{
  xdg.configFile."nvim".source =
  config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.nixos-config/home/programs/nvim/config";

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
