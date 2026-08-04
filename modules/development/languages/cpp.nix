{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    cmake
    ninja
    clang-tools
    gdb
  ];
}
