{ config, pkgs, ... }:

{
  home.username = "aaher";
  home.homeDirectory = "/home/aaher";

  home.stateVersion = "26.05";

  imports = [
    ./git/default.nix
    ./kitty/default.nix
    ./zsh/default.nix
    ./tmux/default.nix
    ./neovim/default.nix
  ];
  
  programs.home-manager.enable = true;

  home.file.".zshrc".source = ./zsh/.zshrc;
 
  home.file.".config/zsh" = {
    source = ./zsh/config;
    recursive = true;
  };
}
