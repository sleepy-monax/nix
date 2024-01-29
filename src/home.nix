{ config, pkgs, ... }:

{
  imports = [
    modules/chrome/mod.nix
    modules/fish/mod.nix
    modules/git/mod.nix
    modules/kitty/mod.nix
    # modules/picom/mod.nix
    modules/utils/mod.nix
    modules/vscode/mod.nix
  ];

  home.username = "smnx";
  home.homeDirectory = "/home/smnx";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
