{ pkgs, ... }:
{

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

}
