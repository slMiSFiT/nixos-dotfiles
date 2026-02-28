{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;  # latest kernel
  #pkgs.linuxPackages_zen;
  # compressed RAM swap, good if you have 8-16GB
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 50;  # use 50% of RAM for zram
  };

  services.fstrim.enable = true;
  services.pipewire.enable = true;
  boot.kernel.sysctl = {
    "vm.swappiness" = 30;
    "vm.vfs_cache_pressure" = 70;
    "kernel.sched_ext" = 1;
  };
}
