{ ... }:
{
  programs.starship.enable = true;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      slm = "echo waalaykum asalam $USER";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#aspirin"; # Rebuild and switch
      nrt = "sudo nixos-rebuild test --flake ~/nixos-dotfiles#aspirin"; # Test without switching
      nrb = "sudo nixos-rebuild boot --flake ~/nixos-dotfiles#aspirin"; # Until next boot
      nrr = "sudo nixos-rebuild switch --rollback"; # prev gen
      nsr = "nix search nixpkgs ripgrep"; # Search packages
      ncg = "sudo nix-collect-garbage -d"; # Garbage collect
      nfs = "nix flake show"; # Check flake structure
      nfu = "nix flake update"; # Update flake inputs
    };
    history.size = 10000;
    history.ignoreAllDups = true;
    history.path = "$HOME/.zsh_history";
    history.ignorePatterns = ["rm *" "pkill *" "cp *"];
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}

