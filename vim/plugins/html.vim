if count(g:plugin_groups, 'html')

  " For Angular, web components, etc...
  " HTML Tidy (http://w3c.github.io/tidy-html5/) will throw errors on custom 
  " DOM elements, attributes, etc...
  let g:syntastic_html_tidy_ignore_errors = [
        \ " proprietary attribute ",
        \ "trimming empty <",
        \ "unescaped &",
        \ "lacks \"action",
        \ "is not recognized!",
        \ "discarding unexpected"
        \ ]

  Bundle 'amirh/HTML-AutoCloseTag'
  Bundle 'hail2u/vim-css3-syntax'
  Bundle 'gorodinskiy/vim-coloresque'
endif
