{ pkgs, ... }:

{
  programs.neovim = {
     enable = true;
  
     defaultEditor = true;

     viAlias = true;
     vimAlias = true;
  
     withNodeJs = true;
     withPython3 = true;

     extraPackages = with pkgs; [
       ripgrep
       fd
       gcc
       git
     ];
   };

   home.sessionVariables = {
     EDITOR = "nvim";
     VISUAL = "nvim";
   };
}
