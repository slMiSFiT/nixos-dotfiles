{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
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
