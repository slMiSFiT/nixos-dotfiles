{ ... }:
{
  imports = [
    ./eza.nix
    ./bat.nix
    ./git.nix
  ];

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.tealdeer = {
    enable = true;
    settings = {
      display.compact = false;
      display.use_pager = true;
      updates.auto_update = true;
    };
  };
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      command_timeout = 500;
    };
  };
}
