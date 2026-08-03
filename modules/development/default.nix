{ config, pkgs, ... }:

{
  imports = [
    ./languages
    ./databases
    ./tools
  ];
}
