{
  description = "Don't touch my garbage!!!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    cutekit.url = "github:cute-engineering/cutekit/0.7-dev?dir=meta/nix";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, cutekit, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      cutekit = cutekit.defaultPackage.${system};
    in
    {
      nixosConfigurations.dellxps = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./src/host/dellxps/hardware.nix
          ./src/system.nix
          inputs.home-manager.nixosModules.default
        ];
      };


    };
}
