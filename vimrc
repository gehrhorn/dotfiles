augroup pathogen
" Uses the pathogen vim utility to load runtime under .vim/bundle/ 
  execute pathogen#infect()
  syntax on
  filetype plugin indent on
augroup END

" Default encoding to make pretty colors and compatability
set encoding=utf-8

" Tabs instead of spaces
augroup spacing
  set expandtab
  set tabstop=2
  set shiftwidth=2
augroup END

augroup statusline
  set noruler
  set laststatus=2
  set statusline=%t       "tail of the filename
  set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
  set statusline+=%{&ff}] "file format
  set statusline+=%h      "help file flag
  set statusline+=%m      "modified flag
  set statusline+=%r      "read only flag
  set statusline+=%y      "filetype
  set statusline+=%{fugitive#statusline()} "git info
  set statusline+=%=      "left/right separator
  set statusline+=%c,     "cursor column
  set statusline+=%l/%L   "cursor line/total lines
  set statusline+=\ %P    "percent through file
augroup END



" Set default searching
augroup searching
  set ignorecase
  set smartcase
  set incsearch
  nnoremap / /\v
  vnoremap / /\v
  nnoremap <tab> %
  vnoremap <tab> %
augroup END

" Quicker escaping
augroup substitutions
  nnoremap - YddjP
  inoremap jj <Esc>
augroup END

" highlight long columns
set colorcolumn=80
" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

" , is a good choice for <leader>
let mapleader = ","
" leader w = new vsplit with focus on new
nnoremap <leader>w <C-w>v<C-w>l
" Press leader l to toggle highlighting
nnoremap <leader><space> :set hlsearch! hlsearch?<CR>

" line numbering
augroup line_numbering
  if version >= 703
    set relativenumber

    function! Numbertoggle()
      if(&relativenumber == 1)
        set number
      else
        set relativenumber
      endif
    endfunction

    nnoremap <leader>t :call Numbertoggle()<cr>
  else
    set number  
  endif
augroup END
" don't put cursor at the start of the line unneccessarily
set nostartofline

" don't insert leading comment characters when pressing `o` or `O` in normal
" mode
setlocal formatoptions-=o

" Settings from 'Configuring vim right'
set hidden
nnoremap ' `
nnoremap ` '
set history=1000
set wildmode=list:longest
set title
set scrolloff=3
set cursorline
set cursorcolumn
" Enable solorized color schme
augroup coloring
  syntax enable
  set background=dark
  colorscheme solarized
augroup END

" Tagbar configuration
nnoremap <F8> :TagbarToggle<CR>

" Disable arrows
augroup vim_training
  noremap <up> <nop>
  noremap <down> <nop>
  noremap <left> <nop>
  noremap <right> <nop>
  nnoremap ; :
  nnoremap : <nop>
  inoremap <C-C> <Nop>
augroup END

" Setting whitespace options
augroup whitespace
  " Invisible chars from vimcasts.org
  " Shortcut to rapidly toggle `set list`
  nnoremap <leader>l :set list!<CR>

  " Use the same symbols as TextMate for tabstops and EOLs
  set listchars=tab:τ\ ,eol:¬

  " Invisible character colors
  highlight NonText guifg=#4a4a59
  highlight SpecialKey guifg=#4a4a59
augroup END

" Easy buffer switching
nnoremap <F5> :buffers<CR>:buffer<Space>

" ,v = edit my vimrc
nnoremap <leader>v <C-w><C-v><C-l>:edit $MYVIMRC<CR>
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
  
" More intuative window movement
augroup window_movement
  noremap <C-h> <C-w>h
  noremap <C-l> <C-w>l
  noremap <C-j> <C-w>j
  noremap <C-k> <C-w>k
augroup END

" Toggle NERDTreeToggle with ,n
noremap <leader>n  :NERDTreeToggle<CR>

" Set folding options ---------- {{{
augroup folding
  set foldmethod=syntax
  set foldnestmax=5
  set foldlevel=99
  nnoremap <Space> za
augroup END
" ------ }}}

" Rainbow_parens plugin ------------------------- {{{
augroup rainbow_parens
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
augroup END
" }}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

augroup filetype_ruby
  autocmd!
  autocmd FileType ruby inoremap <C-l> <Space>=><Space>
  autocmd filetype ruby inoremap <c-k> <c-o>b:<esc>ea
  autocmd filetype ruby nnoremap <c-k> lbi:<esc>e
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  "improve autocomplete menu color
  highlight Pmenu ctermbg=238 gui=bold
augroup end

autocmd bufwinleave *.* mkview
autocmd bufwinenter *.* silent loadview 

nnoremap <leader>z zmzv
set clipboard=exclude:.*

let g:neocomplcache_enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
