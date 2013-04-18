  " Uses the pathogen vim utility to load runtime under .vim/bundle/ 
execute pathogen#infect()
syntax on
filetype plugin indent on

" Default encoding to make pretty colors and compatability
set encoding=utf-8

" Tabs instead of spaces
set expandtab
set tabstop=2
set shiftwidth=2

" line numbering
set number
set ruler

" Set default searching
set ignorecase
set smartcase
set gdefault
set incsearch
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %

" Quicker escaping
inoremap jj <Esc>

" highlight long columns
match ErrorMsg /\%81v.\+/

" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

" , is a good choice for <leader>
let mapleader = ","
" leader w = new vsplit with focus on new
nnoremap <leader>w <C-w>v<C-w>l
" Press leader l to toggle highlighting
nnoremap <leader><space> :set hlsearch! hlsearch?<CR>

" don't put cursor at the start of the line unneccessarily
set nostartofline

" don't insert leading comment characters when pressing `o` or `O` in normal
" mode
set formatoptions-=o

" Settings from 'Configuring vim right'
set hidden
nnoremap ' `
nnoremap ` '
set history=1000
set wildmode=list:longest
set title
set scrolloff=3
set cursorline
" Enable solorized color schme
syntax enable
set background=dark
colorscheme solarized

" Tagbar configuration
nnoremap <F8> :TagbarToggle<CR>

" Disable arrows
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
"
" Invisible chars from vimcasts.org
" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:τ\ ,eol:¬

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Easy buffer switching
nnoremap <F5> :buffers<CR>:buffer<Space>

" ,v = edit my vimrc
nnoremap <leader>v <C-w><C-v><C-l>:edit $MYVIMRC<CR>
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
  
" More intuative window movement
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Toggle NERDTreeToggle with ,n
noremap <leader>n  :NERDTreeToggle<CR>
nnoremap ; :

set foldmethod=syntax
set foldnestmax=5
nnoremap <Space> za

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
