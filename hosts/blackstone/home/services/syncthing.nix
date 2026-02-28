{ ... }:
{
  services.syncthing = {
    enable = true;
    extraOptions = [
      "serve"
    ];
  };
}
