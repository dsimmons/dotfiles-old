if count(g:plugin_groups, 'search')
  Bundle 'Lokaltog/vim-easymotion'

  if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
    Bundle "rking/ag.vim"
    Bundle 'mileszs/ack.vim'

  elseif executable('ack-grep')
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
    Bundle 'mileszs/ack.vim'

  elseif executable('ack')
    Bundle 'mileszs/ack.vim'
  endif

endif
