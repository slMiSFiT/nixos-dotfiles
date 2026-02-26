{ pkgs, ... }:
{
  home.packages =  with pkgs; [
    qutebrowser
    vesktop
    kdePackages.kdeconnect-kde
  ];
}
