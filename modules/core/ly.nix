{ ... }:
{
  services.displayManager.ly = {
    enable = true;
    settings = {
      vi_mode = true;
      clock = "%d - %H:%M";
      animation = "matrix"; # or "doom", "piano", false
      ascii_art = false; # cleaner without the ASCII logo
      term_reset_cmd = "/run/current-system/sw/bin/tput reset";
    };
  };

  console = {
    earlySetup = true;
    colors = [
      "1e1e2e"
      "f38ba8"
      "a6e3a1"
      "f9e2af"
      "89b4fa"
      "cba6f7"
      "94e2d5"
      "cdd6f4"
      "585b70"
      "f38ba8"
      "a6e3a1"
      "f9e2af"
      "89b4fa"
      "cba6f7"
      "94e2d5"
      "cdd6f4"
    ];
  };
}
