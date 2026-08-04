{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     bash
     bash-language-server
     shfmt
     shellcheck
   ];
}
