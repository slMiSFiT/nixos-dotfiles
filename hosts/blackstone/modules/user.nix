{ pkgs, ... }:
{

  services.displayManager.ly = {
    enable = true;
    x11Support = true;
    settings = {
      vi_mode = true;
      #animation = "matrix";
      clock = "%d - %H:%M";
    };
  };

  users.users.misfit = {
    isNormalUser = true;
    description = "soufiane";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ];
  };
  programs.zsh.enable = true;
  environment.shells = with pkgs; [ zsh ];
}
