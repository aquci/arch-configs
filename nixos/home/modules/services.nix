{ ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  services.getty.autologinUser = "onion";

  services.zerotierone.enable = true;
  }
