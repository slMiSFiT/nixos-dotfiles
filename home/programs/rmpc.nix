{ ... }:
{
  services.mpd = {
    enable = true;
    musicDirectory = "~/Sync/music";
    # Optional:
    network.listenAddress = "any"; # if you want to allow non-localhost connections
    network.startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
    #    extraConfig = ''
    #      audio_output {
    #        type "pipewire"
    #        name "My PipeWire Output"
    #      }
    #    '';
  };
  programs.rmpc.enable = true;
}
