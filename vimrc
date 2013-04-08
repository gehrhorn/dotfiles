" Uses the pathogen vim utility to load runtime under .vim/bundle/ 
execute pathogen#infect()
syntax on
filetype plugin indent on

" Maps <F5> to save and run the program
map <F5> <Esc>:w<CR>:!%:p<CR>

" Tabs instead of spaces
set expandtab
set tabstop=2
set shiftwidth=2

" line numbering
set number
set ruler
" highlight long columns
match ErrorMsg /\%81v.\+/


" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

" Settings from 'Configuring vim right'
set hidden
nnoremap ' `
nnoremap ` '
let mapleader = ","
set history=1000
set wildmode=list:longest
set ignorecase
set smartcase
set title
set scrolloff=3

" Tagbar configuration
nmap <F8> :TagbarToggle<CR>

" Disable arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
