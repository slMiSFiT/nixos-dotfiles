{ pkgs, ... }:
{
  home.packages =  with pkgs; [
    qutebrowser
    kdePackages.kdeconnect-kde
  ];
}
