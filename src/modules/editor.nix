{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    # I keep this package mutable since I use the settings sync
  };
  home.packages = [
    pkgs.nixpkgs-fmt # For the nix IDE extension
    pkgs.comic-mono # It's a nice font
  ];
}
