{ config, ... }:

{

  # Ensure ~/Sync exists before Syncthing starts
  home.file."Sync/.stfolder".text = ""; # Syncthing marker file; also creates the dir

  services.syncthing = {
    enable = true;
    tray.enable = false;

    settings = {
      options = {
        urAccepted = -1; # disable anonymous usage reporting
        relaysEnabled = false; # disable relay servers for privacy
      };

      folders = {
        "Sync" = {
          path = "${config.home.homeDirectory}/Sync";
          devices = [
            #"cherymoya"
            "hannah"
          ];
          # id defaults to the attribute name ("Sync") — fine for one folder
        };
      };

      devices = {
        #        "cherymoya" = {
        #          autoAcceptFolders = true;
        #          id = "T3VS6UL-2346ARS-VV6OB35-SBMHBO4-DVY63E5-3E4IQNT-DNU7DGF-LUMWGAY";
        #        };
        "hannah" = {
          autoAcceptFolders = true;
          id = "VJ6WDCB-XA5RC6J-QJUFFPH-5CHQH7O-MIPUO52-FUV34FH-3C6A25T-3OCCIAA";
        };

      };
    };
  };
}
