if count(g:plugin_groups, 'python')
  " Pick either python-mode or pyflakes & pydoc
  Bundle 'klen/python-mode'
  Bundle 'yssource/python.vim'
  Bundle 'python_match.vim'
  Bundle 'pythoncomplete'
endif
