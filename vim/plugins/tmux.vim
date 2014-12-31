" Bundle "christoomey/vim-tmux-navigator"
function! s:vim_tmux_navigator()
  " Don't allow any default key-mappings.
  " <c-\> conflicts with NERDTree "current file".
  let g:tmux_navigator_no_mappings = 1
endfunction

if count(g:plugin_groups, 'tmux')
  call s:vim_tmux_navigator()
  Bundle "christoomey/vim-tmux-navigator"
  Bundle "Keithbsmiley/tmux.vim"
endif
