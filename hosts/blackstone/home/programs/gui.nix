{ config, ... }:
{
  programs.firefox = {
    enable = true;
    languagePacks = [ "en-US" "de" "fr" ];
    policies = {
      DisableTelemetry = true;
      AppAutoUpdate = false;
      BackgroundAppUpdate = false;
    };
    profiles.default.search = {
    force           = true;
    default         = "ddg";
    privateDefault  = "ddg";
    };
  };
  stylix.targets.firefox.enable = false;
}
