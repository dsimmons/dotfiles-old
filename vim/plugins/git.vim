" fugitive.git
" ========================================
" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> ,dg :diffget<CR>
nnoremap <silent> ,dp :diffput<CR>

if count(g:plugin_groups, 'git')
  Bundle 'mattn/gist-vim'
  Bundle "tpope/vim-fugitive"
  Bundle "tpope/vim-git"
  " Bundle "gregsexton/gitv"
endif
