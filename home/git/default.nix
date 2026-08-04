{ ... }:

{
  programs.git = {
    enable = true;
   
    settings = {
      user = {
        name = "dfghtredc";
        email = "Aa.hernandezreyes06@gmail.com";
      };

      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
     
      aliases = {
        st = "status";
        co = "checkout";
        br = "branch";
        cm = "commit";
        lg = "log --oneline --graph --decorate";
      };
    };
  };
}
