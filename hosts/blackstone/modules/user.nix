{ pkgs, ... }:
{
  services.displayManager.ly = {
    enable = true;
    x11Support = true;
    settings = {
      vi_mode = true;
      animation = "matrix";
      clock = "%d - %H:%M";
    };
  };

   programs.neovim = {
    enable = true;
    defaultEditor = true; 
  };

  users.users.misfitgoy = {
    isNormalUser = true;
    description = "misfitgoy";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+XCALVa51QMxkanMQcG/Y2sqhHYP6d/Hxy50DTXZWB lao.soufiane@proton.me"
    ];

    packages = with pkgs; [
      (pkgs.writeShellApplication {
        name = "ns";
        runtimeInputs = with pkgs; [
          fzf
          nix-search-tv
        ];
        text = builtins.readFile "${pkgs.nix-search-tv.src}/nixpkgs.sh";
      })
      # keep it in order
      fastfetch
      git
      lazygit
      tealdeer
      trash-cli
      tree
      yazi
    ];
  };
  programs.zsh.enable = true;
  services.udisks2.enable = true;
}
