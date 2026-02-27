{ ... }:
{
  services.syncthing = {
    enable = true;
    user = "whoami";
    dataDir = "/home/whoami/Sync";
  };
}
