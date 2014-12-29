if count(g:spf13_bundle_groups, 'general')
 " Bundle 'scrooloose/nerdtree'
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'spf13/vim-colors'
  Bundle 'tpope/vim-surround'
  Bundle 'tpope/vim-repeat'
  Bundle 'spf13/vim-autoclose'
  Bundle 'ctrlpvim/ctrlp.vim'
  Bundle 'tacahiroy/ctrlp-funky'
  Bundle 'kristijanhusak/vim-multiple-cursors'
  Bundle 'vim-scripts/sessionman.vim'
  Bundle 'matchit.zip'
  if (has("python") || has("python3")) && exists('g:spf13_use_powerline') && !exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/powerline', {'rtp':'/powerline/bindings/vim'}
  elseif exists('g:spf13_use_powerline') && exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/vim-powerline'
  else
    Bundle 'bling/vim-airline'
  endif
  Bundle 'bling/vim-bufferline'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'flazz/vim-colorschemes'
  Bundle 'mbbill/undotree'
  Bundle 'nathanaelkane/vim-indent-guides'
  if !exists('g:spf13_no_views')
    Bundle 'vim-scripts/restore_view.vim'
  endif
  Bundle 'mhinz/vim-signify'
  Bundle 'tpope/vim-abolish.git'
  Bundle 'osyo-manga/vim-over'
  Bundle 'kana/vim-textobj-user'
  Bundle 'kana/vim-textobj-indent'
  Bundle 'gcmt/wildfire.vim'
endif
