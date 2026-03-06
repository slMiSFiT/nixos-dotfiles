{ pkgs, ... }:
{
  users.users.sysop = {
    isNormalUser = true;
    description = "sysop";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ git ];
  };

}
