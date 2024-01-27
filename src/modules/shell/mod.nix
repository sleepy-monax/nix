{ config, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
  };

  home.packages = [
    pkgs.sqlite
    pkgs.file
  ];

  home.file = {
    ".config/fish/functions".source = ./scripts;
    ".config/fish/conf.d".source = ./configs;
  };
}
