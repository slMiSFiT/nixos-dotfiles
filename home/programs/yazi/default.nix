{ config, ... }:
#let
#  dots = "${config.home.homeDirectory}/.nixos-config/home/programs/yazi/dots";
#in
{

  #  xdg.configFile."yazi".source = config.lib.file.mkOutOfStoreSymlink "${dots}";

  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    shellWrapperName = "y";

    settings = {
      manager = {
        show_hidden = false;
        sort_by = "natural";
        sort_dir_first = true;
        show_symlink = true;
      };
    };

  };
}
