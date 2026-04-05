{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/extra/laptop.nix
    ../../modules/extra/virtualization.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "blackstone";

  networking.networkmanager.enable = true;

  time.timeZone = "Africa/Casablanca";
  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  system.stateVersion = "25.11";

}
