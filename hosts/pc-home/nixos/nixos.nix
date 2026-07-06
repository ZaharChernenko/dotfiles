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

  hardware = {
    graphics.enable = true;
    nvidia = {
      modesetting.enable = true;
      open = false;
      nvidiaSettings = true;
    };

    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_GB.UTF-8";

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
  services.blueman = {
    enable = true;
  };

  programs.amnezia-vpn = {
    enable = true;
  };
  programs.firefox = {
    enable = true;
  };
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.nix-ld = {
    enable = true;
  };
  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      thunar-archive-plugin
    ];
  };
  programs.zsh = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    xfce4-xkb-plugin
    chicago95
    engrampa p7zip
    amneziawg-tools # Instead of AmneziaVPN, which drops S3/S4 params. (amnezia-client#2219)
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05";
}
