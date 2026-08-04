{ ... }:

{
  programs.kitty = {
    enable = true;
   
    shellIntegration.enableZshIntegration = true;

    settings = {
      confirm_os_window_close = 0;
      enable_audio_bell = false;

      scrollback_lines = 10000;
 
      tab_bar_edge = "top";

      cursor_blink_interval = 0;

      remember_window_size = true;
    };
  };
}
