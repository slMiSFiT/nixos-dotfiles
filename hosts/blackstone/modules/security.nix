{ ... }:
{
  services.usbguard = {
    enable = true;
    presentDevicePolicy = "allow"; # allow devices already plugged in at boot
    rules = ''
      block id *
    '';
  };
  security.audit.enable = true;
  security.auditd.enable = true;
}
