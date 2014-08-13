set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rbenv'
Bundle 'kchmck/vim-coffee-script'
Bundle 'rking/ag.vim'

"colors
Bundle 'tpope/vim-vividchalk'

call vundle#end()
filetype plugin indent on

syntax on
set noswapfile
set nobackup
set backspace=indent,eol,start
set viminfo='20,\"50"
set history=1000
set ruler
set showcmd
set incsearch
set browsedir=buffer
set pastetoggle=<F11>
set number
setlocal number
set wildmenu
set showmatch
set so=5
set laststatus=2
set fo=tcrqn
set hidden
set foldminlines=3
set wildmode=longest:full
colorscheme delek
set guioptions=abegimrLtT
set nowrap
set ts=2
set st=2
set sw=2
set mouse=a
set expandtab
set statusline=%y[%{&ff}]%{fugitive#statusline()}\ \ ASCII=\%03.3b,HEX=\%02.2B\ \ %m%r%h%w\ %1*%F%*\ %l:%v\ (%p%%)
set spelllang=en
set nospell
set cc=80
set hlsearch
set cursorline

autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
au VimEnter * syntax keyword Statement lambda conceal cchar=λ
au VimEnter * hi! link Conceal Statement
au VimEnter * set conceallevel=2

ab descirbe describe

fun! Ctags()
  execute "!ctags --exclude=public --exclude=_html --exclude=tmp --exclude=log --exclude=coverage --extra=+f -R *"
endfun

fun! Chomp(str)
  return substitute(a:str, "\n$", "", "g") 
endfun

fun! FindSpec()
  let basename = system("basename " . expand("%") . " .rb")
  let command = "find . -type f -iname \"" . Chomp(basename) . "*\" | grep spec"
  return Chomp(system(command))
endfun

fun! Quickfix()
  set errorformat+=%f
  cex FindSpec()
endfun
