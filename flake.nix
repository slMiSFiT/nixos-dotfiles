{
  description = "My NixOS configuration from Scratch";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # hyprland.url = "github:hyprwm/Hyprland";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

  };
  outputs =
    inputs@{
      self,
      nixpkgs,
      nixos-hardware,
      home-manager,
      ...
    }:
    {
      nixosConfigurations = {
        blackstone = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs;
            host = "blackstone";
            username = "misfit";
          };
          modules = [
            ./hosts/blackstone
            nixos-hardware.nixosModules.lenovo-thinkpad-t470s
          ];
        };
      };
    };
}
