{ pkgs, ... }:
{
  home.packages =  with pkgs; [
    git
    fzf
    zoxide
    ripgrep
    eza
    fd
    bat
    tree
    tealdeer
    gnumake
    #tmux
  ];
}
