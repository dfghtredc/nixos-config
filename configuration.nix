{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "aaher";

  environment.systemPackages = with pkgs; [
    git 
    vim
    curl
    wget
    tree
  ];

  users.users.aaher = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  nix.settings.experimental-features = [
   "nix-command"
   "flakes"
 ];

 system.stateVersion = "26.05";
}

