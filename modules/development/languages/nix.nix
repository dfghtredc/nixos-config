{ pkgs, ... }:

{
 environment.systemPackages = with pkgs; [
   nil
   nixfmt
   nix-tree
   nix-output-monitor
   nvd
   statix
   deadnix
 ];
}
