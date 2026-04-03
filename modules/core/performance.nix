{ pkgs, ... }:

{
  
  services.fstrim.enable = true;
  #services.fwupd.enable = true; # for firmware update

  boot.kernel.sysctl = {
    "vm.swappiness" = 50;
    "vm.vfs_cache_pressure" = 70;
  };

  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 50;
  };

}
