{ pkgs, lib, ... }:
{
  imports = [
    ./eza.nix
    ./fzf.nix
    ./bat.nix
    ./git.nix
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
      nrs = "nixos-rebuild switch --flake ~/.nixos-config#blackstone --sudo";
      nrt = "nixos-rebuild test --flake ~/.nixos-config#blackstone --sudo";
      nrb = "nixos-rebuild boot --flake ~/.nixos-config#blackstone --sudo";
      nrr = "nixos-rebuild switch --rollback --sudo"; # prev gen
      ncg = "nix-collect-garbage -d ";
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
    enableZshIntegration = true;
  };
}
