{
  description = "NixOs from Scratch";
  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

  };
  outputs = inputs@{ self, nixpkgs ,stylix, home-manager, ... }: {
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
              extraSpecialArgs = { inherit inputs; };
              users.misfitgoy= import ./hosts/blackstone/home;
              backupFileExtension = "backup";
            };
          }
        ];
      };
    };
  };
}
