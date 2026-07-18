{ ... }:

  {

  services.xserver.videoDrivers = [ "nvidia" ];

  services.getty.autologinUser = "onion";

  services.udisks2.enable = true;

  }
