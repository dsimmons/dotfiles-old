if count(g:plugin_groups, 'javascript')

  " Default to JSHint for now if both exist because ESLint's ES6 support is spotty.
  if executable('jshint')
    let g:syntastic_javascript_checkers = ['jshint']
  elseif executable('eslint')
    let g:syntastic_javascript_checkers = ['eslint']
  endif

  Bundle 'briancollins/vim-jst'
  Bundle 'elzr/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'kchmck/vim-coffee-script'

  " JSX highlighting, indenting, and parsing (for React.js).
  " Depends on: pangloss/vim-javascript
  Bundle 'mxw/vim-jsx'

  Bundle "othree/javascript-libraries-syntax.vim"
  Bundle 'pangloss/vim-javascript'
endif
