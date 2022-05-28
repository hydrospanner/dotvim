" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" vim-plug plugins
call plug#begin('~//plugged')
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'psf/black', { 'branch': 'stable' }
call plug#end()


" hot keys
noremap <F12> <Esc>:syntax sync fromstart<CR>

set colorcolumn=80
highlight ColorColumn term=reverse ctermbg=234 guibg=LightRed


" Better searching
set incsearch
set showmatch
set hlsearch

" syntastic config
let g:syntastic_python_checkers = ['flake8']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" end syntastic config

" vim-closetag config
let g:closetag_filetypes = 'html,pt,javascript'

" Formatters
" vim-prettier
packloadall
" Toggle the autoformat setting based on whether a config file can be found
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

" Black
" Only run on Black projects. Look for black in path.
if executable('black')
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end
endif


" syntax colors
syntax on
colorscheme onedark


" Indentation
" All tabs are expanded to 4 chars, and backspacing will remove 4 chars.
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround

" favor cindent over smartindent https://vim.fandom.com/wiki/Restoring_indent_after_typing_hash
set cindent
set cinkeys-=0#
set indentkeys-=0#

" front-end file type indentation
autocmd FileType html,css,javascript,scss setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab


" Terminal line
" vim-airline already shows the mode
set noshowmode

" Show the command in the last line
set showcmd

" Show file title in terminal tab
set title


" misc
set scrolloff=8

if has("autocmd")
  " jump to the last position when reopening a file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif

  " file extension changes
  au BufRead,BufNewFile *.pt set filetype=html
endif
