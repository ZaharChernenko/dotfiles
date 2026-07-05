{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.extraModulePackages = [ config.boot.kernelPackages.amneziawg ];
  boot.kernelModules = [ "amneziawg" ];

  hardware.graphics.enable = true;
  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;
  };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

  users.defaultUserShell = pkgs.zsh;

  security.rtkit = {
    enable = true;
  };

  services.printing = {
    enable = true;
  };
  services.resolved = {
    enable = true;
  };
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];

    desktopManager.xfce.enable = true;

    displayManager.lightdm.enable = true;
    displayManager.lightdm.greeters.gtk.theme = {
      package = pkgs.chicago95;
      name = "Chicago95";
    };
    displayManager.lightdm.greeters.gtk.iconTheme = {
      package = pkgs.chicago95;
      name = "Chicago95";
    };

    xkb = {
      layout = "us,ru";
      variant = "";
      options = "grp:win_space_toggle";
    };
  };
  services.pulseaudio = {
    enable = false;
  };
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  programs.amnezia-vpn.enable = true;
  programs.firefox.enable = true;
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.nix-ld.enable = true;
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    chicago95
    xfce4-xkb-plugin
    amneziawg-tools # Instead of AmneziaVPN, which drops S3/S4 params. (amnezia-client#2219)
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05";
}
