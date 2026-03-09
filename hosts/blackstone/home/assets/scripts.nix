{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "ns";
      runtimeInputs = with pkgs; [
        fzf
        nix-search-tv
      ];
      text = builtins.readFile "${pkgs.nix-search-tv.src}/nixpkgs.sh";
    })
    (pkgs.writeShellScriptBin "resources" (builtins.readFile ./dots/.local/bin/resources.sh))
    (pkgs.writeShellScriptBin "repos" (builtins.readFile ./dots/.local/bin/repos.sh))
    (pkgs.writeShellScriptBin "notes" (builtins.readFile ./dots/.local/bin/notes.sh))
  ];
}
