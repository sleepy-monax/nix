{ config, pkgs, ... }:

{
  home.file = {
    ".local/bin".source = ./scripts;
  };
}
