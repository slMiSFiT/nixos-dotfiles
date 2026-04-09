{ username, ... }:
{
  # services.openssh = {
  #   enable = true;
  #   ports = [ 5927 ];
  #   settings = {
  #     PasswordAuthentication = false;
  #     KbdInteractiveAuthentication = false;
  #     PermitRootLogin = "no";
  #     MaxAuthTries = 3;
  #     ClientAliveInterval = 300;
  #     ClientAliveCountMax = 2;
  #     AllowUsers = [ "${username}" ];
  #   };
  #   openFirewall = true;
  # };
  # services.fail2ban.enable = true;
  # services.endlessh = {
  #   enable = true;
  #   port = 22;
  #   openFirewall = true;
  # };

}
