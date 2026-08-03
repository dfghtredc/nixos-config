{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    interactiveShellInit = ''
      eval "$(starshit init zsh)"
    '';
  };
   
  programs.starship.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    zsh
    starship
  ];
}
