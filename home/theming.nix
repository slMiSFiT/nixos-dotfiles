{
  lib,
  pkgs,
  host,
  ...
}:
let
  gtk-theme-name = "Colloid-Green-Dark-Gruvbox";
  gtk-theme = pkgs.colloid-gtk-theme.override {
    colorVariants = [ "dark" ];
    themeVariants = [ "green" ];
    tweaks = [
      "gruvbox"
      "rimless"
      "float"
    ];
  };
  icon-theme-name = "Papirus-Dark";
in
{
  home.packages = with pkgs; [
    # Fonts
    nerd-fonts.jetbrains-mono
    dejavu_fonts
    noto-fonts-color-emoji

  ];
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetBrainsMono Nerd Font" ];
        sansSerif = [ "DejaVu Sans" ];
        serif = [ "DejaVu Serif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };

  gtk = {
    enable = true;
    colorScheme = "dark";

    font = {
      name = "DejaVu Sans";
      size = 12;
    };
    theme = {
      name = gtk-theme-name;
      package = gtk-theme;
    };
    iconTheme = {
      name = icon-theme-name;
      package = pkgs.papirus-icon-theme.override { color = "green"; };
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };

    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = lib.mkForce true;
      };
    };

    gtk4 = {
      theme = {
        name = gtk-theme-name;
        package = gtk-theme;
      };
      extraConfig = {
        gtk-application-prefer-dark-theme = lib.mkForce true;
      };
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-theme = gtk-theme-name;
      icon-theme = icon-theme-name;
      color-scheme = "prefer-dark";
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
    gtk.enable = true;
    hyprcursor.enable = true;

  };
}
