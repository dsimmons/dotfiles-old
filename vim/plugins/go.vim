if count(g:plugin_groups, 'go')
  " Install the required binaries to $GOPATH/bin rather than the default $HOME/.vim-go.
  let g:go_bin_path = $GOPATH . "/bin"

  " Disable quickfix window because we're already using Syntastic.
  " Otherwise you will often times get duplicate warning/error windows that
  " occupy most of the screen.
  let g:go_fmt_fail_silently = 1

  " Better syntax highlighting. A lot of it is turned off by default (boring!).
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1

  " Use goimports to rewrite imports on save (WAY convenient) so that the
  " compiler isn't complaining on every save that imports aren't present or
  " aren't being used.
  let g:go_fmt_command = "goimports"

  Bundle 'fatih/vim-go'
endif
