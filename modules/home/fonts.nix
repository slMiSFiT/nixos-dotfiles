{ pkgs, ... }:
{

  home.packages = with pkgs; [
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

}
