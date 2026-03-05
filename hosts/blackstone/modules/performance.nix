{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 50;
  };

  services.fstrim.enable = true;
  # services.pipewire.enable = true;
  # boot.kernel.sysctl = {
  #   "vm.swappiness" = 30;
  #   "vm.vfs_cache_pressure" = 70;
  #   "kernel.sched_ext" = 1;
  # };

  nix.settings.auto-optimise-store = true;
  # Auto Clean
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 7d";
  };
  # Auto Update
  #system.autoUpgrade = {
  #  enable = true;
  #  dates = "weekly";
  #};
}
