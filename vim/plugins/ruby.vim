if count(g:plugin_groups, 'ruby')
  Bundle 'tpope/vim-cucumber'
  Bundle 'tpope/vim-haml'
  Bundle 'tpope/vim-rails'
  let g:rubycomplete_buffer_loading = 1
endif
