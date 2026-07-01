{ config, pkgs, ... }:
let
  root = ../../../../..;  # repo root (shared configs under share/)
  user = ../.;         # this user's config dir
in
  {
    home.stateVersion = "26.05";

    home.packages = with pkgs; [
      opencode
      bat jq ripgrep
      cmake

      nodejs_22 python313
      uv
      bash-language-server neocmakelsp pyright
      cppcheck ruff pylint
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

    home.file.".config/zed/settings.json".source = user + /zed/settings.json;
    home.file.".config/zed/keymap.json".source   = user + /zed/keymap.json;
    home.file.".config/zed/tasks.json".source    = user + /zed/tasks.json;
    home.file.".config/zed/debug.json".source    = user + /zed/debug.json;

    home.file."Library/Application Support/Code/User/settings.json".source = user + /vscode/settings.json;
    home.file."Library/Application Support/Code/User/keybindings.json".source = user + /vscode/keybindings.json;
    home.file."Library/Application Support/Code/User/vimrc".source = user + /vscode/vimrc;

    home.file.".pylintrc".source     = root + /share/python/pylintrc;
    xdg.configFile."mypy/config".source       = root + /share/python/mypy.ini;
    xdg.configFile."ruff/ruff.toml".source    = root + /share/python/ruff.toml;

    home.file.".clang-format".source = root + /share/cpp/clang-format;

    # NOTE: Do not disable these 'sh' login items in System Settings.
    # They are managed by launchd to inject critical XDG environment variables
    # (like XDG_CONFIG_HOME) into the GUI session. Disabling them will cause
    # GUI applications (like Ghostty) to lose their configuration paths.
    launchd.agents.setenv-xdg-config = {
      enable = true;
      config = {
        Label = "setenv.XDG_CONFIG_HOME";
        ProgramArguments = [
          "/bin/launchctl"
          "setenv"
          "XDG_CONFIG_HOME"
          config.xdg.configHome
        ];
        RunAtLoad = true;
      };
    };
  }
