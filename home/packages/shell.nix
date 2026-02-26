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
    starship
    aria2
    gnumake
    #tmux
  ];
}
