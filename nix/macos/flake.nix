{
  description = "macos flake file";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";
    };
    darwin = {
      url = "github:LnL7/nix-darwin/nix-darwin-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, darwin }:
    let
      username = "zahar";
      system = "aarch64-darwin";
      configuration = "macos";
    in {
      darwinConfigurations.${configuration} = darwin.lib.darwinSystem {
        inherit system;
        modules = [
          ./darwin.nix
          home-manager.darwinModules.home-manager
          {
            system.primaryUser = username;
            users.users.${username} = {
              name = username;
              home = "/Users/${username}";
            };

            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${username} = ./home.nix;
          }
        ];
      };
    };
}
