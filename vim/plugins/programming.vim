"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1

if count(g:plugin_groups, 'programming')
  Bundle 'scrooloose/syntastic'
  " Bundle 'mattn/webapi-vim'
  Plugin 'kylef/apiblueprint.vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'tpope/vim-commentary'
  Bundle 'godlygeek/tabular'
  if executable('ctags')
    Bundle 'majutsushi/tagbar'
  endif
endif
