{ pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [
    R
    rPackages.languageserver
  ];
}
