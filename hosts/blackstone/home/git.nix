{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "soufiane";
        email = "lao.soufiane@proton.me";
      };
      init.defaultBranch = "main";
      core.editor = "nvim";
      pull.rebase = false;
      delta.enable = true; # better diffs
    };
  };

  programs.lazygit = {
    enable = true;
    enableZshIntegration = true;
  };

}
