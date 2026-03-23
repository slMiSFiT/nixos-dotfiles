{ pkgs, ... }:
{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      systemd-boot.configurationLimit = 10;
    };

    kernelPackages = pkgs.linuxPackages_latest;
    #supportedFilesystems = [ "ntfs" ];

    kernel.sysctl = {
      "vm.swappiness" = 50;
      "vm.vfs_cache_pressure" = 70;
    };

  };
}
