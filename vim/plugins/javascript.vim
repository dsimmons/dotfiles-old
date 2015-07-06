if count(g:plugin_groups, 'javascript')

  if executable('eslint')
    let g:syntastic_javascript_checkers = ['eslint']
  elseif executable('jshint')
    let g:syntastic_javascript_checkers = ['jshint']
  endif

  Bundle 'briancollins/vim-jst'
  Bundle 'elzr/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'kchmck/vim-coffee-script'

  " JSX highlighting, indenting, and parsing (for React.js).
  " Depends on: pangloss/vim-javascript
  let g:jsx_ext_required = 0  " Enable JSX support in vanilla JS files.
  Bundle 'mxw/vim-jsx'

  Bundle "othree/javascript-libraries-syntax.vim"
  Bundle 'pangloss/vim-javascript'
endif
