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
  };
}
