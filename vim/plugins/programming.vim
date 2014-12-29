if count(g:spf13_bundle_groups, 'programming')
  " Pick one of the checksyntax, jslint, or syntastic
  Bundle 'scrooloose/syntastic'
  Bundle 'tpope/vim-fugitive'
  Bundle 'mattn/webapi-vim'
  Bundle 'mattn/gist-vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'tpope/vim-commentary'
  Bundle 'godlygeek/tabular'
  if executable('ctags')
    Bundle 'majutsushi/tagbar'
  endif
endif
