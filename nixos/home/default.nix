{ config, pkgs, ... }:

{
  home.username = "onion";

  home.homeDirectory = "/home/onion";

  home.stateVersion = "26.05";

  home.sessionVariables = {
    GTK_THEME = "Adwaita-dark";
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
  };

  programs.home-manager.enable = true;

  imports = [
    ./modules/gtk.nix
  ];

  home.packages = with pkgs; [
    home-manager
  ];

  home.file.".local/share/Steam/steamapps/common/dota 2 beta/game/dota/cfg/autoexec.cfg".source =
    ../../steam/dota2/autoexec.cfg;
}
