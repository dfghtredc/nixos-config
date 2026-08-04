{ pkgs, ... }:

{
 environment.systemPackages = with pkgs; [
   nil
   nixfmt-rfc-style
   nix-tree
   nix-output-monitor
   nvd
   statix
   deadnix
 ];
}
