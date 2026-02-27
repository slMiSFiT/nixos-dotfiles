{ ... }:

{
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 50;  # use 50% of RAM for zram
  };

  swapDevices = [{
    device = "/var/lib/swapfile";
    size = 8192;
  }];

  boot.kernel.sysctl = {
    "vm.swappiness" = 30;
    "vm.vfs_cache_pressure" = 70;
  };

}
