{ config, ... }:

{

  # Ensure ~/Sync exists before Syncthing starts
  home.file."Sync/.stfolder".text = ""; # Syncthing marker file; also creates the dir

  services.syncthing = {
    enable = true;
    tray.enable = true;

    settings = {
      options = {
        urAccepted = -1; # disable anonymous usage reporting
        relaysEnabled = false; # disable relay servers for privacy
      };
      devices = {
        "cherymoya" = {
          autoAcceptFolders = true;
          id = "PYBS6QO-OXPLA3W-XEAHFHI-IHDE557-DMD6F3B-NQZJVET-J4HOVO2-DIYIJAX";
        };

        folders = {
          "Sync" = {
            path = "${config.home.homeDirectory}/Sync";
            devices = [ "cherymoya" ];
            # id defaults to the attribute name ("Sync") — fine for one folder
          };
        };

      };
    };
  };
}
