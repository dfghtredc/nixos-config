{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    uv 
    ruff
    basedpyright
  ];
  
  environment.localBinInPath = true;
}
