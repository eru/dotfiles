" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

call plug#begin($HOME.'/.vim/plugged')

" Load plugins
source $HOME/dotfiles/_vim/plugins.vim

" Add plugins to &runtimepath
call plug#end()

" load plugin configs
for f in split(glob($HOME.'/dotfiles/_vim/plugins/*.vim'), '\n')
    exe 'source' f
endfor
