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

  outputs =
    { self, nixpkgs, darwin, home-manager }:
    let
      configurations = {
        zahar = {
          username = "zahar";
          system = "aarch64-darwin";
          darwinConfig = ./zahar/darwin.nix;
          homeConfig = ./zahar/home.nix;
        };
      };

      mkDarwinConfig =
        configName:
          { username, system, darwinConfig, homeConfig }:
          darwin.lib.darwinSystem {
            inherit system;
            modules = [
              darwinConfig
              home-manager.darwinModules.home-manager
              {
                system.primaryUser = username;
                users.users.${username} = {
                  name = username;
                  home = "/Users/${username}";
                };

                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;
                home-manager.users.${username} = homeConfig;
              }
            ];
          };
    in
    {
      darwinConfigurations = builtins.mapAttrs mkDarwinConfig configurations;
    };
}
