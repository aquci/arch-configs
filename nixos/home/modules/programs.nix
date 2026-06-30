{ ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.zsh.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };
}
