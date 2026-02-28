{ config, ... }:

{
  networking.hostName = "blackstone"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  services.openssh = {
    enable = true;
    ports = [ 5924 ];
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      MaxAuthTries = 3;
      ClientAliveInterval = 300;
      ClientAliveCountMax = 2;
      AllowUsers = [ "misfit" ];
    };
  };
  services.fail2ban.enable = true;
  services.endlessh = {
    enable = true;
    port = 22;
    openFirewall = true;
  };

  # Open ports in the firewall.
  networking.firewall = {
    allowedTCPPortRanges = [ 
      { from = 1714; to = 1764; } # Kdeconnect
    ];
    allowedUDPPortRanges = [
      { from = 1714; to = 1764; } # Kdeconnect
    ];
    allowedTCPPorts = [ 5924 ];
    #allowedUDPPorts = [ ... ];
  };

  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

}
