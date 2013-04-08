" Uses the pathogen vim utility to load runtime under .vim/bundle/ 
execute pathogen#infect()
syntax on
filetype plugin indent on

" Maps <F5> to save and run the program
map <F5> <Esc>:w<CR>:!%:p<CR>

" rsenseHome does Ruby expansion
let g:rsenseHome = "/csnzoo/gehrhorn/opt/rsense-0.3"
let g:rsenseUseOmniFunc = 1

" Tabs instead of spaces
set expandtab
set tabstop=2
set shiftwidth=2

" line numbering
set number
set ruler
" highlight long columns
match ErrorMsg /\%81v.\+/

" settings for solarized colors
syntax enable
set background=dark
colorscheme solarized

" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
