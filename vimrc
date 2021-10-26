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
let g:closetag_filetypes = 'html,pt,javascript'

" vim-prettier
packloadall
" Toggle the autoformat setting based on whether a config file can be found
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

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
set smartindent
" smartindent fix: Restore indent after typing hash. See
" https://vim.fandom.com/wiki/Restoring_indent_after_typing_hash
inoremap # X<BS>#

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
