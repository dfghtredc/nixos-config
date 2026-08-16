{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    
    enableCompletion = true; 
    
    autosuggestion.enable = true;
    
    syntaxHighlighting.enable = true;

    history = {
      size = 10000;
      save = 10000;
      path = "${builtins.getEnv "HOME"}/.zsh_histroy";

      ignoreDups = true;   
      share = true;
      append = true;
    };
  };
  
  home.file.".zshrc".source = ./.zshrc;
  
  home.file.".config/zsh" = {
    source = ./config;
    recursive = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = false;
  };
}
