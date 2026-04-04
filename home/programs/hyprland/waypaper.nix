{ pkgs, ... }:
{
  home.packages = with pkgs; [ waypaper ];

  xdg.configFile."waypaper/config.ini".text = ''
    [Settings]
    language = en
    backend = hyprpaper
    folder = ~/Pictures/wallpapers
    monitors = All
    wallpaper = ~/Pictures/wallpapers/gruvbox/nixos.png
    fill = fill
    sort = date
    color = #ffffff
    subfolders = True
    all_subfolders = False
    show_hidden = False
    show_gifs_only = False
    zen_mode = True
    post_command = pkill .waypaper-wrapp
    number_of_columns = 3
    awww_transition_type = any
    awww_transition_step = 90
    awww_transition_angle = 0
    awww_transition_duration = 2
    awww_transition_fps = 60
    mpvpaper_sound = False
    mpvpaper_options = 
    stylesheet =
    keybindings =
    use_xdg_state = False
  '';
}
