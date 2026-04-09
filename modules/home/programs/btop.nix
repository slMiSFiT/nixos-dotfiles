{ ... }:
{
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "TTY";
      vim_keys = true;
      theme_background = false;
      update_ms = 500;
      rounded_corners = false;
    };
  };
}
