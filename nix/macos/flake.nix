{
  description = "macos flake file";
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations.macos = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
      };
    };
}
