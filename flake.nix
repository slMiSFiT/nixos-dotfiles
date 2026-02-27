{
  description = "NixOs from Scratch";
  inputs = {
    # If you prefer a stable release instead, you can this to the latest number shown here: https://nixos.org/download
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };
  outputs = inputs@{ self, nixpkgs,stylix, home-manager, ... }: {
    nixosConfigurations = {
     blackstone = nixpkgs.lib.nixosSystem {
        modules = [
          ./hosts/blackstone
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              #extraSpecialArgs = { inherit inputs; };
              users.misfit = ./hosts/blackstone/home;
              backupFileExtension = "backup";
            };
          }
        ];
      };
      aspirin = nixpkgs.lib.nixosSystem {
        modules = [
          ./hosts/aspirin
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.whoami = ./hosts/aspirin/whoami;
              backupFileExtension = "backup";
            };
          }
        ];
      };
    };
  };
}
