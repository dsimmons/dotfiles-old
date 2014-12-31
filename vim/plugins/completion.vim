if count(g:plugin_groups, 'snipmate')
  Bundle 'garbas/vim-snipmate'
  Bundle 'honza/vim-snippets'
  " Source support_function.vim to support vim-snippets.
  if filereadable(expand("~/.vim/bundle/vim-snippets/snippets/support_functions.vim"))
    source ~/.vim/bundle/vim-snippets/snippets/support_functions.vim
  endif
elseif count(g:plugin_groups, 'youcompleteme')
  Bundle 'Valloric/YouCompleteMe'
  Bundle 'SirVer/ultisnips'
  Bundle 'honza/vim-snippets'
elseif count(g:plugin_groups, 'neocomplcache')
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet'
  Bundle 'Shougo/neosnippet-snippets'
  Bundle 'honza/vim-snippets'
elseif count(g:plugin_groups, 'neocomplete')
  Bundle 'Shougo/neocomplete.vim.git'
  Bundle 'Shougo/neosnippet'
  Bundle 'Shougo/neosnippet-snippets'
  Bundle 'honza/vim-snippets'
endif
let g:acp_enableAtStartup = 0

" enable completion from tags
let g:ycm_collect_identifiers_from_tags_files = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Haskell post write lint and check with ghcmod
" $ `cabal install ghcmod` if missing and ensure
" ~/.cabal/bin is in your $PATH.
if !executable("ghcmod")
  autocmd BufWritePost *.hs GhcModCheckAndLintAsync
endif

" For snippet_complete marker.
if !exists("g:spf13_no_conceal")
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif
endif

" Disable the neosnippet preview candidate window
" When enabled, there can be too much visual noise
" especially when splits are used.
set completeopt-=preview
