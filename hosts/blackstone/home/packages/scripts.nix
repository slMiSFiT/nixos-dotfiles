{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellScriptBin "bookmarks" (builtins.readFile ../assets/dots/.local/bin/bookmarks.sh))
  ];
}
