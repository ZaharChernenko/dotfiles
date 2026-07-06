{ ... }:

{
  nix = {
    enable = false;
  };
  homebrew = {
    enable = true;
    brews = [ "llvm" ];
  };

  system.stateVersion = 4;
}
