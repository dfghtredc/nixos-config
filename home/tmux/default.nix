{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;

    shell = "${pkgs.zsh}/bin/zsh";

    baseIndex= 1;
    newSession = true;

    escapeTime = 0;

    mouse = true;
 
    clock24 = true;

   historyLimit = 50000;

   plugins = with pkgs.tmuxPlugins; [
     better-mouse-mode
   ];

   extraConfig = ''
     #Terminal support
     set -g default-terminal "tmux-256color"
     set -as terminal-features ",xterm-256color:RGB"
     set -as terminal-features ",xterm-kitty:RGB"


     #True Color
     set -ga terminal-overrides ",*:Tc"


     #Keep New panes/windows in the current directory
     bind | split-window -h -c "#{pane_current_path}"
     bind - split-window -v -c "3{pane_current_path}"
     bind c new-window -c "#{pane_current_path}"


     #Reload tmux configuration
     bind r source-file ~/.config/tmux/tmux.conf \; display-message "tmux config reloaded"


     #Start numbering at 1
     set -g pane-base-index 1


     #Automatically renumber windows after one closes
     set -g renumber-windows on

     #Vim-style pane naigation
     bind -r H resize-pane -L 5
     bind -r J resize-pane -D 5
     bind -r K resize-pane -U 5
     bind -r L resize-pane -R 5


     #Vi-style copy mode
     setw -g mode-keys vi    
   '';
 };
}
