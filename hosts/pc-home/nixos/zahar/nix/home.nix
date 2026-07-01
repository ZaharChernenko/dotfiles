{ config, pkgs, ... }:
let
  root = ../../../../..;  # repo root (shared configs under share/)
  user = ../.;         # this user's config dir
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

    xdg.enable = true;
    xdg.configHome = "${config.home.homeDirectory}/xdg_config";
    xdg.dataHome   = "${config.home.homeDirectory}/xdg_data";

    home.file.".zshenv".source       = user + /zsh/zshenv;
    home.file.".zshrc".source        = root + /share/zsh/zshrc;
    home.file.".p10k.zsh".source     = root + /share/zsh/p10k.zsh;
    xdg.configFile."zsh/lib".source  = root + /share/zsh/lib;

    xdg.configFile."ghostty/config".source    = root + /share/ghostty/config;

    xdg.configFile."vim/vimrc".source         = root + /share/vim/vimrc;
    xdg.configFile."vim/snapshot.vim".source  = root + /share/vim/snapshot.vim;
    xdg.configFile."vim/settings".source      = root + /share/vim/settings;
    xdg.configFile."vim/shortcuts".source     = root + /share/vim/shortcuts;
    xdg.configFile."ycm_extra_conf".source    = root + /share/ycm_extra_conf;

    home.file.".pylintrc".source     = root + /share/python/pylintrc;
    xdg.configFile."mypy/config".source       = root + /share/python/mypy.ini;
    xdg.configFile."ruff/ruff.toml".source    = root + /share/python/ruff.toml;

    home.file.".clang-format".source = root + /share/cpp/clang-format;

    home.sessionVariables = {
      XDG_CONFIG_HOME = config.xdg.configHome;
      XDG_DATA_HOME   = config.xdg.dataHome;
    };
  }
