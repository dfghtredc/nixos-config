{ config, pkgs, ... }:

{
  home.username = "aaher";
  home.homeDirectory = "/home/aaher";

  home.stateVersion = "26.05";
  
  programs.home-manager.enable = true;

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
 
  home.file.".zshrc".source = ./zsh/.zshrc;

  home.file.".comfig/starship.toml".source = 
    ./starship/starship.toml;
 
  home.file.".config/zsh" = {
    source = ./zsh/config;
    recursive = true;
  };
}
