{ pkgs, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  services.ly = {
    enable = true;
    settings = {
      vi_mode = true;
      clock = "%d - %H:%M";
    };
  };
  programs.vim = {
    enable = true;
    settings = {
      vi_mode = true;
    };
  };

  # $ nix search wget
  environment.systemPackages = with pkgs; [
    git
    vim
    htop
    wget
  ];

}
