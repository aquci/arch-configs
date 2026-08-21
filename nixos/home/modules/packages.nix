{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    android-tools
    bat
    cava
    cmake
    curl
    discord
    docker
    eza
    fastfetch
    gcc
    git
    gnumake
    grim
    htop
    iptables
    jq
    keepassxc
    kitty
    krita
    lavat
    localsend
    nano
    nemo
    neovim
    obs-studio
    obsidian
    pavucontrol
    rofi
    slurp
    spotify
    starship
    tor-browser
    udiskie
    unzip
    usbutils
    wbg
    waybar
    wget
    wl-clipboard
    xrandr
    zoxide
    
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
