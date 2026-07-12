{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   kitty
   xrandr
   iptables
   rofi
   nemo
   neovim
   git
   nano
   wget
   curl
   wbg
   fastfetch
   slurp
   grim
   waybar
   zoxide
   starship
   tor-browser
   gcc
   unzip
   cmake
   bat
   eza
   pavucontrol
   keepassxc
   discord
   obsidian
   htop
   cava
   docker
   wl-clipboard
   jq
   obs-studio

  (prismlauncher.override {
    gamemodeSupport = true;
    controllerSupport = true;

    additionalPrograms = [
      ffmpeg
      gamemode
    ];

    jdks = [
      jdk25
      jdk21
      jdk17
    ];
  })

  ];
}
