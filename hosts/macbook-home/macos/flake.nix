{
  description = "macbook-home/macos flake file";

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
      system = "aarch64-darwin";
      darwinConfig = ./darwin.nix;

      mkDarwinConfig =
        { userConfig, homeConfig }:
        darwin.lib.darwinSystem {
          inherit system;
          modules = [
            darwinConfig
            home-manager.darwinModules.home-manager
            {
              system.primaryUser = userConfig.name;
              users.users.${userConfig.name} = {
                inherit (userConfig) name home;
              };

              home-manager.users.${userConfig.name} = homeConfig;
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
            }
          ];
        };
    in
    {
      darwinConfigurations = {
        zahar = mkDarwinConfig {
          userConfig = rec { name = "zahar"; home = "/Users/${name}"; };
          homeConfig = ./zahar/nix/home.nix;
        };
      };
    };
}
