" Uses the pathogen vim utility to load runtime under .vim/bundle/ 
execute pathogen#infect()
syntax on
filetype plugin indent on

set encoding=utf-8

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


" Press leader l to toggle highlighting
nmap <leader>h :set hlsearch! hlsearch?<CR>

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

syntax enable
set background=dark
colorscheme solarized

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

" Invisible chars from vimcasts.org
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:→\ ,eol:¬

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

nmap <F5> :buffers<CR>:buffer<Space>
