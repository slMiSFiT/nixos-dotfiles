{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellScriptBin "resources" (builtins.readFile ./assets/dots/.local/bin/resources.sh))
    (pkgs.writeShellScriptBin "repos" (builtins.readFile ./assets/dots/.local/bin/repos.sh))
  ];
}
