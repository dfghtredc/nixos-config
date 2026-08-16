{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh
    shfmt
    shellcheck
  ];
}
