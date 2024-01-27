{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "smnx";
    userEmail = "me@smnx.sh";
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
}
