" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" ================ General Config ====================

set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/plugins.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

if filereadable(expand("~/.vim/mappings.vim"))
  source ~/.vim/mappings.vim
endif

" ===================== Appearance =====================
syntax on                       " syntax highlighting
set background=dark             " assume dark background
let g:rehash256=1               " Specific to molokai to enable more subtle color.
colorscheme molokai
highlight clear SignColumn      " Sign column, clear styling and match background
highlight clear LineNr          " Line number, clear styling and match background.

" On window focus, turn on relative line numbering and a visual \"crosshair\".
" Although more convenient, FocusGained/FocusLost doesn't seem to work
" reliably on terminal versions of Vim.
augroup focusme
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal
        \ relativenumber cursorline cursorcolumn
  autocmd WinLeave * setlocal
        \ norelativenumber nocursorline nocursorcolumn
augroup end

" ================ Persistence ======================

set noswapfile
set nobackup
set nowb

" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" Defaults for Vim 7.4 1-488 installed using Homebrew on OSX 10.10.1.
" If ever on a system where these are different, compare to and/or use.
" set viminfo='100,<50,s10,h

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:·
set list listchars=tab:»\ ,trail:·
map <silent> <Leader>lch :set list!<CR>

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
