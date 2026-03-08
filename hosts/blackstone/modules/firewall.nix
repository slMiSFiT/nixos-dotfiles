{ config, ... }:

{
  # Open ports in the firewall.
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

}
