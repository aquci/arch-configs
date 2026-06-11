{config, pkgs, ...}:

{
 imports = [
  ./hardware-configuration.nix
];

  networking.hostName = "onion";
  networking.networkmanager.enable = true;
  networking.firewall.enable = false;
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";

  services.xserver.videoDrivers = ["nvidia"];
  services.tor = { enable = true;
  client.enable = true;
  };

  hardware.graphics = {
   enable = true;
  };

  hardware.nvidia = {
   modesetting.enable = true;
   open = false;
   nvidiaSettings = true;
  };

  programs.hyprland = {
   enable = true;
   xwayland.enable = true;
  };

  programs.zsh.enable = true;

  programs.steam = {
   enable = true;
   remotePlay.openFirewall = true; 
  };

  environment.systemPackages = with pkgs; [
   kitty
   rofi
   nemo
   git
   nano
   wget
   curl
   firefox
   wbg
   fastfetch
   slurp
   grim
   waybar
   zoxide
   starship
   tor-browser
   tor
   gcc
   cmake
   bat
   eza
   pavucontrol
   pwvucontrol
   keepassxc
   audacious
  ];

  fonts.packages = with pkgs; [
   nerd-fonts.jetbrains-mono
   noto-fonts-color-emoji
   cozette
 ];

  users.users.onion = {
   isNormalUser = true;
   extraGroups = ["wheel" "networkmanager"];
   shell = pkgs.zsh;
  };

  security.sudo.wheelNeedsPassword = true;


  system.stateVersion = "26.05";
 }
