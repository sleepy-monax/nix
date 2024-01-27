{ config, pkgs, ... }:

{
  services.picom.enable = true;
  home.file = {
    ".config/picom".source = ./configs;
  };
}
