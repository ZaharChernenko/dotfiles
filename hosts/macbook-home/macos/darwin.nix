{ pkgs, ... }:

{
  nix = {
    enable = false;
  };

  homebrew = {
    enable = true;
    brews = [ "llvm" ];
  };

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  system.stateVersion = 4;
}
