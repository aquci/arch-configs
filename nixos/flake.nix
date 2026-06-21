{
description = "onion";

inputs = {
nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
zen-browser = {
url = "github:youwen5/zen-browser-flake";
inputs.nixpkgs.follows = "nixpkgs";
};
};

outputs = { self, nixpkgs, zen-browser, ... }:
let
system = "x86_64-linux";
pkgs = nixpkgs.legacyPackages.${system};
in {
nixosConfigurations.onion =
nixpkgs.lib.nixosSystem {
inherit system;
modules = [
./configuration.nix
./hardware-configuration.nix
( { ... }: {
environment.systemPackages = [
zen-browser.packages.${system}.default
];
})
];
};
};
}
