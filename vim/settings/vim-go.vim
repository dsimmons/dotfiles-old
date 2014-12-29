" Install the required binaries to $GOPATH/bin rather than the default $HOME/.vim-go.
let g:go_bin_path = $GOPATH . "/bin"

" Disable quickfix window because we're already using Syntastic.
" Otherwise you will often times get duplicate warning/error windows that
" occupy most of the screen.
let g:go_fmt_fail_silently = 1
