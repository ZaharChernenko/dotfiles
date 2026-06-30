{ config, pkgs, ... }:
let
  pwd = ../../../..;
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

    xdg.configHome = "${config.home.homeDirectory}/xdg_config";
    xdg.dataHome   = "${config.home.homeDirectory}/xdg_data";

    home.file.".zshenv".source       = pwd + /zsh/macbook-home/macos/zahar/zshenv;
    home.file.".zshrc".source        = pwd + /zsh/zshrc;
    home.file.".p10k.zsh".source     = pwd + /zsh/p10k.zsh;
    xdg.configFile."zsh/share".source = pwd + /zsh/share;

    xdg.configFile."ghostty/config".source    = pwd + /ghostty/config;

    xdg.configFile."vim/vimrc".source         = pwd + /vim/vimrc;
    xdg.configFile."vim/snapshot.vim".source  = pwd + /vim/snapshot.vim;
    xdg.configFile."vim/settings".source      = pwd + /vim/settings;
    xdg.configFile."vim/shortcuts".source     = pwd + /vim/shortcuts;
    xdg.configFile."ycm_extra_conf".source    = pwd + /ycm_extra_conf;

    home.file.".config/zed/settings.json".source = pwd + /zed/macbook-home/macos/zahar/settings.json;
    home.file.".config/zed/keymap.json".source   = pwd + /zed/macbook-home/macos/zahar/keymap.json;
    home.file.".config/zed/tasks.json".source    = pwd + /zed/macbook-home/macos/zahar/tasks.json;
    home.file.".config/zed/debug.json".source    = pwd + /zed/macbook-home/macos/zahar/debug.json;

    home.file."Library/Application Support/Code/User/settings.json".source = pwd + /vscode/macbook-home/macos/zahar/settings.json;
    home.file."Library/Application Support/Code/User/keybindings.json".source = pwd + /vscode/macbook-home/macos/zahar/keybindings.json;
    home.file."Library/Application Support/Code/User/vimrc".source = pwd + /vscode/macbook-home/macos/zahar/vimrc;

    home.file.".pylintrc".source     = pwd + /python/pylintrc;
    xdg.configFile."mypy/config".source       = pwd + /python/mypy.ini;
    xdg.configFile."ruff/ruff.toml".source    = pwd + /python/ruff.toml;

    home.file.".clang-format".source = pwd + /cpp/clang-format;

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
