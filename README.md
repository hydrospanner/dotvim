# VIM Config

## Installation & updating
To push this config to a new machine:

```shell
cd
git clone https://github.com/hydrospanner/dotvim.git .vim
echo "runtime vimrc" > .vimrc
```

When Vim is opened, [Vim-Plug](https://github.com/junegunn/vim-plug)
(included in this repo)
will automatically install any missing plugins.

## Plugins

### VIM Theme
- [Airline](https://github.com/vim-airline/vim-airline)
    - [Fugitive](https://github.com/tpope/vim-fugitive) Git magic

### Code formatters
- [Editor Config](https://github.com/editorconfig/editorconfig-vim)
- [Prettier](https://github.com/prettier/vim-prettier)
- [Black](https://github.com/psf/black/blob/stable/plugin/black.vim)

### Syntax colors
- [Onedark](https://github.com/joshdick/onedark.vim)
    - [Polyglot](https://github.com/sheerun/vim-polyglot)

### Productivity
- [Closetag](https://github.com/alvan/vim-closetag) auto close HTML tags
- [Auto Pairs](https://github.com/jiangmiao/auto-pairs.git)
- [Syntastic](https://github.com/vim-syntastic/syntastic) lint
