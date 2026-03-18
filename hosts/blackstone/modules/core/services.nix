{ ... }:

{
  services = {
    udisks2.enable = true;
    gvfs.enable = true;

    dbus.enable = true;
    fstrim.enable = true;
    fwupd.enable = true;
  };
}
