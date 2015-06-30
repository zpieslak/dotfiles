" Run pathogen plugins
execute pathogen#infect()

" Syntax highlighting
syntax on

" Colorscheme settings
set t_Co=256
set background=dark
colorscheme solarized

" General settings
" Incremental search
set incsearch

" Show line numbers
set number

" Highlight all search pattern matches
set hlsearch

" Insert spaces on tab key
set expandtab

" Set indentation to 2 spaces
set shiftwidth=2

" Set tab width to 2 spaces
set softtabstop=2

" Convert existing tabs to spaces
retab

" Disable line wrapping
set nowrap

" Always show a status line
set laststatus=2

" Bash style autocomplete
set wildmenu
set wildmode=list:longest

" Set output encoding
set encoding=utf-8

" Set file encoding
set fileencoding=utf-8

" Set unix line endings
set ff=unix

" Disable swap file creation
set noswapfile

" Show matching brackets
set showmatch

" Autocmd settings
" Replace any CRLF to LF line endings
autocmd BufWritePre * :set ff=unix

" Clean trailing whitespace and EOL markers
autocmd BufWritePre * :%s/\s\+$//e

" Detect filetypes and indentation based on plugin
filetype plugin indent on

" Syntastic settings
" Enable rubocop checker
let g:syntastic_ruby_checkers = ['rubocop']

" Add Syntastic to status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" If enabled, syntastic will do syntax checks when buffers are first loaded as well as on saving
let g:syntastic_check_on_open = 1

" Use this option to tell syntastic whether to use the |:sign| interface to mark syntax errors
let g:syntastic_enable_signs = 0

" Enable this option to tell syntastic to always stick any detected errors into the |location-list|
let g:syntastic_always_populate_loc_list = 1

" When set to 1 the error window will be automatically opened when errors are detected, and closed when none are detected.
let g:syntastic_auto_loc_list = 1

" When set to 1 the cursor will always jump to the first issue detected, regardless of type
let g:syntastic_auto_jump = 1

" Keyboard map
:map <F7> :tabp<CR>
:map <F8> :tabn<CR>
nmap <S-Tab> <<
nmap <Tab> >>
imap <S-Tab> <Esc><<i

" Silence search highlights
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
