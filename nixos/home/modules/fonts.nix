{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts-color-emoji
    cozette
    dejavu_fonts
    noto-fonts
  ];  
}
