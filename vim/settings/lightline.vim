let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'filename': 'MyFilename',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

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
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFilename()
  " Get file name (eg. expand('%:t') => lightline.vim), along with
  " its containing/parent directory.
  " Example: /some/path/to/a/file.type
  " Produces: a/file.type
  let filename = substitute(expand('%'), '.*/\([^/]\+/\)', '\1', '')
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != filename ? filename : '[NoName]')
endfunction

" Use status bar even with single buffer
set laststatus=2
