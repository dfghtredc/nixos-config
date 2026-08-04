{ pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    dotnet-sdk 
    omnisharp-roslyn
  ];
}
