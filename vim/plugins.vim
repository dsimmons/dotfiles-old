" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
" set rtp+=~/.vim/plugins/
call vundle#begin()

" Let Vundle manage iteself (required).
Plugin 'gmarik/vundle'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

if !exists('g:plugin_groups')
  let g:plugin_groups = [
        \ 'appearance',
        \ 'completion',
        \ 'general',
        \ 'git',
        \ 'go',
        \ 'html',
        \ 'improvements',
        \ 'javascript',
        \ 'misc',
        \ 'youcompleteme',
        \ 'programming',
        \ 'python',
        \ 'ruby',
        \ 'search',
        \ 'textobjects',
        \ 'tmux',
        \ 'writing',
        \ ]
endif

for f in split(glob('~/.vim/plugins/*.vim'), '\n')
  exe 'source' f
endfor

" Use fork bundles config if available
if filereadable(expand("~/.vimrc.bundles.fork"))
  source ~/.vimrc.bundles.fork
endif

" Use local bundles config if available
if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

" All of your Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required
