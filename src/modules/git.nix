{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "smnx";
    userEmail = "me@smnx.sh";
  };
}