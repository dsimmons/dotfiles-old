if count(g:spf13_bundle_groups, 'snipmate')
  Bundle 'garbas/vim-snipmate'
  Bundle 'honza/vim-snippets'
  " Source support_function.vim to support vim-snippets.
  if filereadable(expand("~/.vim/bundle/vim-snippets/snippets/support_functions.vim"))
    source ~/.vim/bundle/vim-snippets/snippets/support_functions.vim
  endif
elseif count(g:spf13_bundle_groups, 'youcompleteme')
  Bundle 'Valloric/YouCompleteMe'
  Bundle 'SirVer/ultisnips'
  Bundle 'honza/vim-snippets'
elseif count(g:spf13_bundle_groups, 'neocomplcache')
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet'
  Bundle 'Shougo/neosnippet-snippets'
  Bundle 'honza/vim-snippets'
elseif count(g:spf13_bundle_groups, 'neocomplete')
  Bundle 'Shougo/neocomplete.vim.git'
  Bundle 'Shougo/neosnippet'
  Bundle 'Shougo/neosnippet-snippets'
  Bundle 'honza/vim-snippets'
endif
