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
  };
  programs.zsh.enable = true;
}
