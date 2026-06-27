{ config, pkgs, ... }:

{
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    bat jq ripgrep
    opencode
    bash-language-server
    cmake neocmakelsp
    cppcheck clang-tools
    nodejs_22 prettier
    uv pyright ruff pylint
  ];

  xdg.configHome = "${config.home.homeDirectory}/xdg_config";
  xdg.dataHome   = "${config.home.homeDirectory}/xdg_data";

  home.file.".clang-format".source = ../../cpp/clang-format;
  home.file.".pylintrc".source     = ../../python/pylintrc;
  home.file.".p10k.zsh".source     = ../../zsh/p10k.zsh;
  home.file.".zshenv".source       = ../../zsh/zshenv;
  home.file.".zshrc".source        = ../../zsh/zshrc;

  xdg.configFile."mypy/config".source       = ../../python/mypy.ini;
  xdg.configFile."ruff/ruff.toml".source    = ../../python/ruff.toml;
  xdg.configFile."third_party_vimrc".source = ../../third_party_vimrc;
  xdg.configFile."ghostty/config".source    = ../../ghostty/config;
  xdg.configFile."ycm_extra_conf".source    = ../../ycm_extra_conf;

  xdg.configFile."vim/vimrc".source         = ../../vim/vimrc;
  xdg.configFile."vim/snapshot.vim".source  = ../../vim/snapshot.vim;
  xdg.configFile."vim/settings".source      = ../../vim/settings;
  xdg.configFile."vim/shortcuts".source     = ../../vim/shortcuts;

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
