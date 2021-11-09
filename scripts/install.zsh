#!/usr/bin/env zsh

# .config
mkdir -p $HOME/.config

# zsh
if [ -f $HOME/.zshrc ]; then
  rm -f $HOME/.zshrc
fi
ln -s $HOME/dotfiles/_zshrc $HOME/.zshrc
if [ -d $HOME/.zsh ]; then
  rm -rf $HOME/.zsh
fi
mkdir $HOME/.zsh
if [ -f $HOME/.zshenv ]; then
  rm -f $HOME/.zshenv
fi
ln -s $HOME/dotfiles/_zshenv $HOME/.zshenv
if [ -d $HOME/.zplug ]; then
  rm -rf $HOME/.zplug
fi
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# tmux
if [ -d $HOME/.tmux ]; then
  rm -rf $HOME/.tmux
fi
mkdir -p $HOME/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
if [ -f $HOME/.tmux.conf ]; then
  rm -f $HOME/.tmux.conf
fi
ln -s $HOME/dotfiles/_tmux.conf $HOME/.tmux.conf

# git
if [ -f $HOME/.gitconfig ]; then
  rm -f $HOME/.gitconfig
fi
ln -s $HOME/dotfiles/_git/gitconfig $HOME/.gitconfig

# vim
if [ -f $HOME/.vimrc ]; then
  rm -f $HOME/.vimrc
fi
ln -s $HOME/dotfiles/_vimrc $HOME/.vimrc
if [ -d $HOME/.vim ]; then
  rm -rf $HOME/.vim
fi
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ -d $HOME/.vim/ftdetect ]; then
  rm -f $HOME/.vim/ftdetect
fi
ln -s $HOME/dotfiles/_vim/ftdetect $HOME/.vim/ftdetect
ln -s $HOME/dotfiles/_vim/coc-settings.json $HOME/.vim/coc-settings.json

# xvim
if [ -f $HOME/.xvimrc ]; then
  rm -f $HOME/.xvimrc
fi
ln -s $HOME/dotfiles/_xvimrc $HOME/.xvimrc

# neovim
if [ -d $HOME/.config/nvim ]; then
  rm -rf $HOME/.config/nvim
fi
ln -s $HOME/.vim $HOME/.config/nvim
ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
if which pip2 > /dev/null 2>&1; then
  pip2 install pynvim
fi
if which pip3 > /dev/null 2>&1; then
  pip3 install pynvim
fi
if which npm > /dev/null 2>&1; then
  npm -g install neovim
fi
if which gem > /dev/null 2>&1; then
  gem install neovim
fi

# tig
if [ -f $HOME/.tigrc ]; then
  rm -f $HOME/.tigrc
fi
ln -s $HOME/dotfiles/_tigrc $HOME/.tigrc

# Hyper
if [ -f $HOME/.hyper.js ]; then
  rm -f $HOME/.hyper.js
fi
ln -s $HOME/dotfiles/_hyper.js $HOME/.hyper.js

# powerline
if [ -d $HOME/.config/powerline ]; then
  rm -rf $HOME/.config/powerline
fi
ln -s $HOME/dotfiles/_config/powerline $HOME/.config/powerline

# mpv
if [ -d $HOME/.config/mpv ]; then
  rm -rf $HOME/.config/mpv
fi
ln -s $HOME/dotfiles/_config/mpv $HOME/.config/mpv

# install plugins
echo '
### Please execute these commands. ###
$HOME/.tmux/plugins/tpm/bin/install_plugins
exec $SHELL -l
vi -c PlugUpdate
'
