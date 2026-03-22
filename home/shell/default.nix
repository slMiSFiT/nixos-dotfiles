{ pkgs, lib, ... }:
{
  imports = [
    ./eza.nix
    ./fzf.nix
    ./bat.nix
    ./git.nix
    ./tealdeer.nix
  ];

  home.packages = with pkgs; [
    # keep it in order
    fd
    ripgrep
    jq
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      find = "fd";
      grep = "rg";
      jctl = "journalctl -p 3 -xb";

      nrs = "sudo nixos-rebuild switch --flake ~/.nixos#blackstone";
      nrt = "sudo nixos-rebuild test --flake ~/.nixos#blackstone";
      nrb = "sudo nixos-rebuild boot --flake ~/.nixos#blackstone";
      nrr = "sudo nixos-rebuild switch --rollback"; # prev gen
      ncg = "sudo nix-collect-garbage -d";
      nca = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      nfs = "nix flake show"; # Check flake structure
      nfu = "nix flake update"; # Update flake inputs
    };
    history.size = 10000;
    history.ignoreAllDups = true;
    history.path = "$HOME/.zsh_history";
    history.ignorePatterns = [
      "rm *"
      "pkill *"
      "cp *"
    ];
  };
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      command_timeout = 500;
    };
  };
}
