# VIM Config

## Installation & updating
To push this config to a new machine:

```shell
cd
git clone https://github.com/hydrospanner/dotvim.git .vim
echo "runtime vimrc" > .vimrc
# get the submodules (plugins)
cd .vim
git submodule init
git submodule update
```

To add new plugins:
Load plugins with Pathogen. Add repo as submodule in `bundle/`

```shell
git submodule add <url> bundle/dir_name
```

To pull in new submodules to their pinned commit:
```shell
git pull
git submodule init
git submodule update
```

To update plugins to their latest commit:

```shell
git submodule update --recursive --remote
```

## Plugins

### VIM Theme
- [Airline](https://github.com/vim-airline/vim-airline)
    - [Fugitive](https://github.com/tpope/vim-fugitive) Git magic

### Code formatters
- [Editor Config](https://github.com/editorconfig/editorconfig-vim)
- [Prettier](https://github.com/prettier/vim-prettier)

### Syntax colors
- [Onedark](https://github.com/joshdick/onedark.vim)
    - [Polyglot](https://github.com/sheerun/vim-polyglot)

### Productivity
- [Closetag](https://github.com/alvan/vim-closetag) auto close HTML tags
- [Syntastic](https://github.com/vim-syntastic/syntastic) lint
