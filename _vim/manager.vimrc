" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

call plug#begin($HOME.'/.vim/plugged')

" Load plugins
source $HOME/dotfiles/_vim/plugins.vimrc

" Add plugins to &runtimepath
call plug#end()
