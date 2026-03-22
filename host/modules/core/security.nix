{ ... }:
{
  # services.usbguard = {
  #   enable = true;
  #   presentDevicePolicy = "allow"; # allow devices already plugged in at boot
  # };
  #security.audit.enable = true;
  #security.auditd.enable = true;

  security = {
    rtkit.enable = true;
    sudo.enable = true;
  };
}
