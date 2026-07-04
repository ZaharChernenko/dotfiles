{ ... }:

{
  nix = {
    enable = false;
  };
  homebrew = {
    enable = true;
    brews = [ "llvm" ];
    casks = [ "ghostty" ];
  };

  system.stateVersion = 4;
}
