" Install the required binaries to $GOPATH/bin rather than the default $HOME/.vim-go.
let g:go_bin_path = $GOPATH . "/bin"

" Disable quickfix window because we're already using Syntastic.
" Otherwise you will often times get duplicate warning/error windows that
" occupy most of the screen.
let g:go_fmt_fail_silently = 1

" Toggle the Molokai theme when entering a golang buffer.
" Switch back to Solarized for any other buffer.
" Solarized syntax highlighting for golang isn't great IMO.
autocmd BufEnter,BufNewFile *.go colorscheme molokai
autocmd BufEnter,BufNewFile *.go set background=light
autocmd BufLeave *.go colorscheme solarized
autocmd BufLeave *.go set background=dark

" On OSX 10.9.4 and vim 7.4 1-488, this defaults to "menu,preview".
" With the `preview` option set, omnicomplete menus spawn an additional
" [Preview] buffer that's a complete waste of space (and casuses screen flicker).
autocmd BufEnter,BufNewFile *.go setlocal completeopt=menu

" A mapping that for now I'm only applying to golang buffers.
" Because golang has so many compiler warnings on save (eg. variables declared
" and not used), this binding is useful to clear the warnings and reclaim
" screen real-estate so that I'm not discouraged from saving frequently.
autocmd BufEnter,BufNewFile *.go map <buffer> <Leader>sr :SyntasticReset<CR>
