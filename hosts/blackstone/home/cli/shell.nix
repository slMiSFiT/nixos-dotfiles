{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    # keep it in order
    fd
    jq
    ripgrep
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      find = "fd";
      grep = "rg";
      ":q" = "exit";
      lsbc = "lsblk -f | bat -l conf -p ";
      tree = "eza --tree ";
      d = "exa -a --grid ";
      jctl = "journalctl -p 3 -xb";
      man = "batman";

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
}
