{ ... }:
{
  services.syncthing = {
    enable = true;
    user = "misfit";
    dataDir = "/home/misfit/Sync";
  };
}
