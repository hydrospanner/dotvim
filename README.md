# VIM Config

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
Load with Pathogen. Add repo as submodule

```shell
git submodule add <url> bundle/dir_name
```

To update plugins:

```shell
git submodule update --recursive --remote
```

### Plugins

- [VIM Syntastic](https://github.com/vim-syntastic/syntastic)
- [VIM Airline](https://github.com/vim-airline/vim-airline)
- [Editor Config](https://github.com/editorconfig/editorconfig-vim)
- [VIM Closetag](https://github.com/alvan/vim-closetag)
- [onedark](https://github.com/joshdick/onedark.vim)
- [vim-polyglot](https://github.com/sheerun/vim-polyglot)
