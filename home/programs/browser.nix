{ inputs, pkgs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.twilight-official
  ];
  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
  };

  # Secondary
  home.packages = with pkgs; [ brave ];
}
