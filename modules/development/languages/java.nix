{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jdk
    gradle
    maven
   jdt-language-server
   kotlin-language-server 
  ];
}
