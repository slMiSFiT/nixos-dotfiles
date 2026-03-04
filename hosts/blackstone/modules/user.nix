{ pkgs, ... }:
{
  services.displayManager.ly = {
    enable = true;
    x11Support = true;
    settings = {
      vi_mode = true;
      animation = "matrix";
      clock = "%d - %H:%M";
    };
  };

   programs.neovim = {
    enable = true;
    defaultEditor = true; 
  };

  users.users.misfitgoy = {
    isNormalUser = true;
    description = "misfitgoy";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      (pkgs.writeShellApplication {
        name = "ns";
        runtimeInputs = with pkgs; [
          fzf
          nix-search-tv
        ];
        text = builtins.readFile "${pkgs.nix-search-tv.src}/nixpkgs.sh";
      })
      # keep it in order
      btop
      brave
      cliphist
      fastfetch
      foot
      fuzzel
      git
      libnotify
      mako
      nautilus
      rofimoji
      swaybg
      swayidle
      swaylock
      tealdeer
      trash-cli
      tree
      waybar
      waypaper
      wl-clipboard
      yazi
    ];
  };
  programs.zsh.enable = true;
  services.udisks2.enable = true;
}
