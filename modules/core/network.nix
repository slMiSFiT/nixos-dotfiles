{ config, pkgs, ... }:

{

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking = {
    nameservers = [
      "1.1.1.1"
      "1.0.0.1"
    ];
    networkmanager = {
      enable = true;
      wifi = {
        scanRandMacAddress = true;
        macAddress = "random";
      };
      ethernet.macAddress = "stable";
      dns = "systemd-resolved";
    };
  };

  services.resolved = {
    enable = true;
    settings = {
      Resolve = {
        DNS = config.networking.nameservers;
        DNSOverTLS = true;
        DNSSEC = true;
        Domains = [ "~." ];
      };
    };
  };

  # services.dnscrypt-proxy2 = {
  #   enable = true;
  #   settings = {
  #     ipv6_servers = true;
  #     require_dnssec = true;
  #     require_nolog = true;    # only use servers that don't log
  #   };
  # };

  networking.firewall = {
    enable = true;
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

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];

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

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

}
