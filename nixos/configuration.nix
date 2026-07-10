{config, pkgs, ...}:

{
 imports = [
  ./hardware-configuration.nix
  ./home/modules/services.nix
  ./home/modules/packages.nix
  ./home/modules/programs.nix
  ./home/modules/user.nix
  ./home/modules/networking.nix
  ./home/modules/fonts.nix
  ./home/modules/nvidia.nix
  ./home/modules/experimental.nix
  ./home/modules/boot.nix
  ./home/modules/locale.nix
];

  nixpkgs.config.allowUnfree = true;

  documentation.nixos.enable = false;
  security.sudo.wheelNeedsPassword = true;

  services.zerotierone = {
    enable = true;
    joinNetworks = [
      "8d1c312afa77efd9"
    ];
  };

  
  services.udisks2.enable = true;

  environment.systemPackages = with pkgs; [
    udiskie
    usbutils
  ];


  system.stateVersion = "26.05";
 }

