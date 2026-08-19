{
  programs.niri.enable = true;

  programs.niri.settings = {
    spawn-at-startup = [
      {
        command = [ "kitty" ];
      }
    ];
  };
}
