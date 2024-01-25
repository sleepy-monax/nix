{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      ms-python.python
      llvm-vs-code-extensions.vscode-clangd
    ];
    userSettings = {
      "files.autosave" = "afterDelay";
      "window.menuBarVisibility" = "toggle";
    };
  };
}