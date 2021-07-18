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

### Plugins

- [VIM Syntastic](https://github.com/vim-syntastic/syntastic)
- [VIM Airline](https://github.com/vim-airline/vim-airline)
