{ inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.twilight-official
  ];
  programs.zen-browser.enable = true;
  stylix.targets.zen-browser.enable = false;
}

