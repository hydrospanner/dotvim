" Pull in pathogen
execute pathogen#infect()

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
let g:closetag_filetypes = 'html,pt'

" misc
syntax on
set scrolloff=8

" All tabs are expanded to 4 chars, and backspacing will remove 4 chars.
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround
set cindent

" front-end file type indentation
autocmd FileType html,css,javascript,scss setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
" Show what mode we are in
set showmode

" Show the command in the last line
set showcmd

" Show file title in terminal tab
set title

if has("autocmd")
  " jump to the last position when reopening a file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
