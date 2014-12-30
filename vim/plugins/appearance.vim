if count(g:plugin_groups, 'appearance')
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'flazz/vim-colorschemes'

  if (has("python") || has("python3")) && exists('g:spf13_use_powerline') && !exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/powerline', {'rtp':'/powerline/bindings/vim'}
  elseif exists('g:spf13_use_powerline') && exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/vim-powerline'
  else
    Bundle "itchyny/lightline.vim"
    " Bundle 'bling/vim-airline'
  endif
endif
