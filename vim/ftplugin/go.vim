" On OSX 10.9.4 and vim 7.4 1-488, this defaults to "menu,preview".
" With the `preview` option set, omnicomplete menus spawn an additional
" [Preview] buffer that's a complete waste of space (and casuses screen flicker).
setlocal completeopt=menu

" A mapping that for now I'm only applying to golang buffers.
" Because golang has so many compiler warnings on save (eg. variables declared
" and not used), this binding is useful to clear the warnings and reclaim
" screen real-estate so that I'm not discouraged from saving frequently.
map <buffer> <Leader>sr :SyntasticReset<CR>
