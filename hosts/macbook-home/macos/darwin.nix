{ ... }:

{
  system.stateVersion = 4;

  nix = {
    enable = false;
  };
  homebrew = {
    enable = true;
    brews = [ "llvm" ];
    casks = [ "ghostty" ];
  };
}
