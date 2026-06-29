{ ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  services.getty.autologinUser = "onion";

  services.tor = {
    enable = true;
    client.enable = true;
  };
}
