{ ... }:
{
  nix.settings.auto-optimise-store = true;
  # Auto Clean
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 30d";
  };
  # Auto Update
  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    dates = "weekly";
  };
}
