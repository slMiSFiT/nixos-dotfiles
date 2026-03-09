{ ... }:
{
  programs.fzf = {
    enable = true;
    colors = {
      bg = "-1";
      "bg+" = "-1";
    };
    enableZshIntegration = true;
  };
  stylix.targets.fzf.enable = false;
}
