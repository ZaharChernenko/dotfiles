# dotfiles
- [dotfiles](#dotfiles)
  - [installation](#installation)
  - [fonts](#fonts)
## installation
```shell
uv sync
source .venv/bin/activate
dotbot -c install.conf.yaml
```
## fonts
[Patch your font](https://github.com/ryanoasis/nerd-fonts). If you use `gvim`, add the `--mono` flag to ensure all glyphs, both existing and added, are single-width.