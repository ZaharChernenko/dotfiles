# dotfiles

- [macOS](#macos)
  - [Installation](#installation)
  - [Vim](#vim)
    - [vim-plug](#vim-plug)
    - [YouCompleteMe](#youcompleteme)
  - [fonts](#fonts)

## macOS

### Installation

```shell
# install nix
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
# bootstrap nix-darwin, first run installs darwin-rebuild
sudo nix run nix-darwin -- switch --flake ./nix/macos#macos
# subsequent runs
sudo darwin-rebuild switch --flake ./nix/macos#macos
```

### Vim

#### vim-plug

1. Install vim-plug

   ```shell
   curl -fLo "${XDG_CONFIG_HOME}/vim/autoload/plug.vim" --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. Install plugins via vim-plug

   ```vim
   source ${XDG_CONFIG_HOME}/vim/snapshot.vim
   ```

#### YouCompleteMe

1.  Find the python path linked to vim

    ```vim
    py3 import sysconfig;print(sysconfig.get_config_var('BINDIR'))
    ```

2.  Build watchdog module

    This is important because without the build, ycmd will use `kqueue` rather than `FSEvents`, which may cause too many file descriptors to be opened.

    ```shell
    cd "${XDG_CONFIG_HOME}/vim/bundle/YouCompleteMe/third_party/ycmd/third_party/watchdog_deps/watchdog/"
    <path_to_linked_python> ./setup.py build
    ```

3.  Build You Complete Me
    - If you build ycm without the `--clang-completer` flag, then `ycm_core.CompilationDatabase` will not be available.
    - If you build ycm with the `--clangd-completer` flag, then you can use `compile_commands.json` in `.ycm_extra_conf.py`. [How to](https://github.com/ycm-core/YouCompleteMe/wiki/FAQ#im-using-clangd-how-can-i-specify-a-per-project-compilation-database-path).

    ```shell
    cd "${XDG_CONFIG_HOME}/vim/bundle/YouCompleteMe/"
    <path_to_linked_python> ./install.py --clangd-completer
    ```

    [Here](https://github.com/ycm-core/lsp-examples) you can find examples of installing other lsp servers for ycm.

### fonts

[Patch your font](https://github.com/ryanoasis/nerd-fonts). If you use gvim, add the `--mono` flag to ensure all glyphs, both existing and added, are single-width.
