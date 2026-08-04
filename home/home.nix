{ config, pkgs, ... }:

{
  home.username = "aaher";
  home.homeDirectory = "/home/aaher";

  home.stateVersion = "26.05";
  
  programs.home-manager.enable = true;
}
