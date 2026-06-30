{ config, pkgs, ... }:
let
  pwd = ../../../..;
in
  {
    home.stateVersion = "26.05";

    home.packages = with pkgs; [
      ghostty
      vim-full
      opencode claude-code
      bat git jq ripgrep
      cmake gnumake

      gcc nodejs_22 python313
      uv
      bash-language-server neocmakelsp pyright
      clang-tools cppcheck ruff pylint
      prettier

      nerd-fonts.jetbrains-mono
    ];

    xdg.configHome = "${config.home.homeDirectory}/xdg_config";
    xdg.dataHome   = "${config.home.homeDirectory}/xdg_data";

    home.file.".zshenv".source       = pwd + /zsh/pc-home/nixos/zahar/zshenv;
    home.file.".zshrc".source        = pwd + /zsh/zshrc;
    home.file.".p10k.zsh".source     = pwd + /zsh/p10k.zsh;
    xdg.configFile."zsh/share".source = pwd + /zsh/share;

    xdg.configFile."ghostty/config".source    = pwd + /ghostty/config;

    xdg.configFile."vim/vimrc".source         = pwd + /vim/vimrc;
    xdg.configFile."vim/snapshot.vim".source  = pwd + /vim/snapshot.vim;
    xdg.configFile."vim/settings".source      = pwd + /vim/settings;
    xdg.configFile."vim/shortcuts".source     = pwd + /vim/shortcuts;
    xdg.configFile."ycm_extra_conf".source    = pwd + /ycm_extra_conf;

    home.file.".pylintrc".source     = pwd + /python/pylintrc;
    xdg.configFile."mypy/config".source       = pwd + /python/mypy.ini;
    xdg.configFile."ruff/ruff.toml".source    = pwd + /python/ruff.toml;

    home.file.".clang-format".source = pwd + /cpp/clang-format;

    home.sessionVariables = {
      XDG_CONFIG_HOME = config.xdg.configHome;
      XDG_DATA_HOME   = config.xdg.dataHome;
    };
  }
