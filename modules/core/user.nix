{
  pkgs,
  inputs,
  host,
  username,
  ...
}:
{

  users.users.${username} = {
    isNormalUser = true;
    description = username;
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ];
  };
  programs.zsh.enable = true;
  nix.settings.allowed-users = [ "${username}" ];

  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs host username; };
    backupFileExtension = "hm-backup";

    users.${username} = {
      imports = [ ./../home ];
      home.username = username;
      home.homeDirectory = "/home/${username}";
      home.stateVersion = "26.05";
      programs.home-manager.enable = true;
    };
  };

}
