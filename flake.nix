{
  description = "NixOs from Scratch";
  inputs = {
    # If you prefer a stable release instead, you can this to the latest number shown here: https://nixos.org/download
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };
  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.blackstone = nixpkgs.lib.nixosSystem {
      modules = [
        ./hosts/laptop
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            #extraSpecialArgs = { inherit inputs; };
            users.misfit = ./home;
            backupFileExtension = "backup";
          };
        }
      ];
    };
  };
}
