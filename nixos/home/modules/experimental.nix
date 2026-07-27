{ pkgs, ... }:

{
  documentation.nixos.enable = false;
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
