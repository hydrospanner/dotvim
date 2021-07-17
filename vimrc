" Pull in pathogen
execute pathogen#infect()

set colorcolumn=80
highlight ColorColumn term=reverse ctermbg=234 guibg=LightRed


" syntastic config
let g:syntastic_python_checkers = ['flake8']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" end syntastic config


syntax on

" All tabs are expanded to 4 chars, and backspacing will remove 4 chars.
set expandtab
set shiftwidth=4
set tabstop=4
" set smartindent
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround

" front-end file type indentation
autocmd FileType html,css,javascript,scss setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
" Show what mode we are in
set showmode

" Show the command in the last line
set showcmd

" Show file title in terminal tab
set title
