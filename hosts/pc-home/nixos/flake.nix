{
  description = "pc-home/nixos flake file";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-26.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { self, nixpkgs, home-manager }:
    let
      system = "x86_64-linux";
      nixosConfig = ./nixos.nix;

      mkNixosConfig =
        { userConfig, homeConfig }:
        nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            nixosConfig
            home-manager.nixosModules.home-manager
            {
              users.users.${userConfig.name} = {
                inherit (userConfig) home isNormalUser extraGroups;
              };

              home-manager.users.${userConfig.name} = homeConfig;
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        zahar = mkNixosConfig {
          userConfig = rec {
            name = "zahar";
            home = "/home/${name}";
            isNormalUser = true;
            extraGroups = [ "wheel" "networkmanager" ];
          };
          homeConfig = ./zahar/nix/home.nix;
        };
      };
    };
}
