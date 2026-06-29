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

      mkNixosConfig = username: homeConfig:
        nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            nixosConfig
            home-manager.nixosModules.home-manager
            {
              users.users.${username} = {
                isNormalUser = true;
                home = "/home/${username}";
                extraGroups = [ "wheel" "networkmanager" ];
              };

              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.${username} = homeConfig;
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        zahar = mkNixosConfig "zahar" ./zahar/home.nix;
      };
    };
}
