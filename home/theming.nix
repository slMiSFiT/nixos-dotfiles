{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Fonts
    nerd-fonts.jetbrains-mono
    maple-mono.CN
    dejavu_fonts
    noto-fonts-color-emoji

  ];
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetBrainsMono Nerd Font" ];
        sansSerif = [ "Maple Mono" ];
        serif = [ "DejaVu Serif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
    gtk.enable = true;
    hyprcursor.enable = true;
  };

  gtk = {
    enable = true;
    colorScheme = "dark";

    font = {
      name = "Maple Mono";
      size = 12;
    };

    theme = {
      name = "Colloid-Green-Dark-Gruvbox";
      package = pkgs.colloid-gtk-theme.override {
        colorVariants = [ "dark" ];
        themeVariants = [ "green" ];
        tweaks = [
          "gruvbox"
          "rimless"
          "float"
        ];
      };
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme.override { color = "green"; };
    };

  };
}
