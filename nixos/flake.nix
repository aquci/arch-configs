{
  description = "onion";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    zen-browser,
    ...
  }:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.onion =
      nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./configuration.nix
          ./hardware-configuration.nix

          home-manager.nixosModules.home-manager

          {
            environment.systemPackages = [
              zen-browser.packages.${system}.default
            ];

            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;

              users.onion =
                import ./home/default.nix;
            };
          }
        ];
      };
  };
}
