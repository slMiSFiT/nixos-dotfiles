{ pkgs, ... }:
{

  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep-since 7d --keep 5";
    };
    flake = "/home/misfit/.nixos-config";
  };

  nix = {
    settings = {
      auto-optimise-store = true;
      substituters = [
        "https://nix-community.cachix.org"
        "https://hyprland.cachix.org"
      ];
      trusted-public-keys = [
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      ];
    };

    # NOTE: nh is used instead
    # gc = {
    #   automatic = true;
    #   dates = "daily";
    #   options = "--delete-older-than 7d";
    # };

  };

  #system.autoUpgrade = {
  #  enable = true;
  #  dates = "weekly";
  #};

}
