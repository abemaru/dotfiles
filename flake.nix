{
  description = "abemaru`s nix config";
  
  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
  in {

    overlays = import ./overlays {inherit inputs;};

    nixosConfigurations = {
      gpd = nixpkgs.lib.nixosSystem {
	      modules = [
	        ./nixos/configuration.nix
	        home-manager.nixosModules.home-manager
	        {
	          home-manager.useGlobalPkgs = true;
	          home-manager.useUserPackages = true;
	          home-manager.users.abemaru = import ./home-manager/home.nix;
            home-manager.extraSpecialArgs = { inherit inputs system;};
	        }
	      ];
      };
    };
  };
}

