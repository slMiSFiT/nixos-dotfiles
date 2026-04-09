{ config, pkgs, ... }:

{

  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];

  networking = {
    firewall = {
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
    };
  };

}
