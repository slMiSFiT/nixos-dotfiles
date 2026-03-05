{ ... }:
{
  services.logind = {
    lidSwitch = "ignore";
    lidSwitchExternalPower = "ignore";
  };
  systemd.sleep.extraConfig = ''
    AllowSuspend=no
    AllowHibernation=no
  '';
}
