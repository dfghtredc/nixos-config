{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nodejs  
    pnpm  
    typescript
    typescript-language-server
    eslint
    prettier
  ];
}
