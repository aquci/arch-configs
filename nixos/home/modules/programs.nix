{ ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = false;
  };

  programs.zsh.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };
}
