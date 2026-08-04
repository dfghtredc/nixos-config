{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    shfmt
    shellcheck
  ];
}
