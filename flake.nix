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

    # nixvim
    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.pre-commit-hooks.follows = "";
    };
    hyprpanel = {
      url = "github:Jas-SinghFSU/HyprPanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprsome = {
      url = "github:sopa0/hyprsome";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ags.url = "github:Aylur/ags";

    # xremap
    xremap = {
      url = "github:xremap/nix-flake";
      inputs.home-manager.follows = "home-manager";
      inputs.hyprland.follows = "hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nixvim,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        gpd = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs system; };
          modules = [
            ./nixos/configuration.nix
            {
              nixpkgs.overlays = [
                inputs.hyprpanel.overlay
              ];
            }
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                sharedModules = [
                  nixvim.homeManagerModules.nixvim
                ];
                users = {
                  abemaru = import ./home-manager/home.nix;
                };
                extraSpecialArgs = { inherit inputs system; };
              };
            }
          ];
        };
      };
    };
}
