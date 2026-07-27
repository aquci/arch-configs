{ ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  services.getty.autologinUser = "onion";

  services.udisks2.enable = true;

  services.zerotierone = {
    enable = true;
    joinNetworks = [
      "8d1c312afa766930"
    ];
  };
}
