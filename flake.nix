{
  description = "NixOS Config v0.4";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      username = "ilya";
      colors = import ./modules/user/colors.nix;
      unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };
      mkHost = { hostName, isVM ? false }: nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs unstable username hostName isVM colors; };
        modules = [
          ./modules/system/common.nix
          ./hosts/${hostName}/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs unstable username hostName isVM colors; };
            home-manager.users.${username} = import ./modules/user/home.nix;
          }
        ];
      };
    in {
      nixosConfigurations = {
        vm = mkHost { hostName = "vm"; isVM = true; };
        qemu = mkHost { hostName = "qemu"; isVM = true; };
        vbox = mkHost { hostName = "vbox"; isVM = true; };
        desktop = mkHost { hostName = "desktop"; isVM = false; };
        laptop = mkHost { hostName = "laptop"; isVM = false; };
      };
    };
}
