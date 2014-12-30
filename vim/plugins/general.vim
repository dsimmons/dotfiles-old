if count(g:plugin_groups, 'general')
  Bundle 'tpope/vim-surround'
  Bundle 'tpope/vim-repeat'
  Bundle 'spf13/vim-autoclose'
  Bundle 'ctrlpvim/ctrlp.vim'
  Bundle 'tacahiroy/ctrlp-funky'
  Bundle 'kristijanhusak/vim-multiple-cursors'
  Bundle 'vim-scripts/sessionman.vim'
  Bundle 'matchit.zip'
  " Bundle 'bling/vim-bufferline'
  Bundle 'mbbill/undotree'
  Bundle 'nathanaelkane/vim-indent-guides'
  if !exists('g:spf13_no_views')
    Bundle 'vim-scripts/restore_view.vim'
  endif
  Bundle 'mhinz/vim-signify'
  Bundle 'tpope/vim-abolish.git'
  Bundle 'osyo-manga/vim-over'
  Bundle 'gcmt/wildfire.vim'
endif
