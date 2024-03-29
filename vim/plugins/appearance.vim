" Bundle 'altercation/vim-colors-solarized'
function! s:vim_colors_solarized()
  let g:solarized_termcolors = 256
  let g:solarized_termtrans  = 1
  let g:solarized_contrast   = "normal"
  let g:solarized_visibility = "normal"
endfunction

function! s:lightline()
  " Use status bar even with single buffer
  set laststatus=2

  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'filename': 'MyFilename',
        \   'fugitive': 'MyFugitive',
        \   'mode':     'MyMode',
        \   'paste':    'MyPaste',
        \   'readonly': 'MyReadonly',
        \ },
        \ 'separator': { 'left': '⮀', 'right': '⮂' },
        \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
        \ }

  let s:threshold = 70

  function! MyMode()
    return winwidth(0) > s:threshold ? lightline#mode() : lightline#mode()[0]
  endfunction

  function! MyPaste()
    if !&paste | return '' | endif
    return winwidth(0) > s:threshold ? 'PASTE' : 'P'
  endfunction

  function! MyReadonly()
    if &filetype == "help"
      return ""
    elseif &readonly
      return "⭤ "
    else
      return ""
    endif
  endfunction

  function! MyFugitive()
    if exists("*fugitive#head")
      let _ = fugitive#head()
      let display_str = strlen(_) ? '⭠ '._ : ''
      return winwidth(0) > s:threshold ? display_str : ''
    endif
    return ''
  endfunction

  function! MyFilename()
    " Get file name (eg. expand('%:t') => lightline.vim), along with
    " its containing/parent directory.
    " Example: /some/path/to/a/file.type
    " Produces: a/file.type
    let filename = substitute(expand('%:p'), '.*/\([^/]\+/\)', '\1', '')
    let filename = winwidth(0) > s:threshold ? filename : expand('%:t')
    return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
          \ ('' != filename ? filename : '[NoName]')
  endfunction
endfunction

if count(g:plugin_groups, 'appearance')
  call s:vim_colors_solarized()
  Bundle 'altercation/vim-colors-solarized'

  Bundle 'flazz/vim-colorschemes'

  if (has("python") || has("python3")) && exists('g:spf13_use_powerline') && !exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/powerline', {'rtp':'/powerline/bindings/vim'}
  elseif exists('g:spf13_use_powerline') && exists('g:spf13_use_old_powerline')
    Bundle 'Lokaltog/vim-powerline'
  else
    call s:lightline()
    Bundle "itchyny/lightline.vim"
    " Bundle 'bling/vim-airline'
  endif
endif
