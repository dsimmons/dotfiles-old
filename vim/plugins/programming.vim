if count(g:plugin_groups, 'programming')
  Bundle 'scrooloose/syntastic'
  " Bundle 'mattn/webapi-vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'tpope/vim-commentary'
  Bundle 'godlygeek/tabular'
  if executable('ctags')
    Bundle 'majutsushi/tagbar'
  endif
endif
