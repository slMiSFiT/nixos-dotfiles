{ config, ... }:

{

  networking.hostName = "blackstone";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager = {
    enable = true;
    wifi.scanRandMacAddress = true;
    wifi.macAddress = "random";
    ethernet.macAddress = "stable";
  };

  #   services.resolved = {
  #     enable = true;
  #     dnssec = "true";
  #     dnsOverTls = "true";
  #     fallbackDns = [
  #       "1.1.1.1#cloudflare-dns.com"
  #       "9.9.9.9#dns.quad9.net"
  #     ];
  #   };

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
  #     X11Forwarding = false;
  #     AllowUsers = [ "misfitgoy" ];
  #   };
  #   openFirewall = true;
  # };
  # services.fail2ban.enable = true;
  # services.endlessh = {
  #   enable = true;
  #   port = 22;
  #   openFirewall = true;
  # };

  networking.firewall = {
    allowedTCPPortRanges = [
      {
        from = 1714;
        to = 1764;
      } # Kdeconnect
    ];
    allowedUDPPortRanges = [
      {
        from = 1714;
        to = 1764;
      } # Kdeconnect
    ];
    #allowedTCPPorts = [ ... ];
    #allowedUDPPorts = [ ... ];
  };
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

}
