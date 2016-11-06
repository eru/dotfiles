#!/usr/bin/env zsh

# zsh
if [ -f ~/.zshrc ]; then
  rm -f ~/.zshrc
fi
ln -s ~/dotfiles/_zshrc ~/.zshrc
if [ -d ~/.zsh ]; then
  rm -rf ~/.zsh
fi
mkdir ~/.zsh
if [ -f ~/.zshenv ]; then
  rm -f ~/.zshenv
fi
ln -s ~/dotfiles/_zshenv ~/.zshenv
if [ -d ~/.zplug ]; then
  rm -rf ~/.zplug
fi
curl -sL zplug.sh/installer | zsh

# tmux
if [ -d ~/.tmux ]; then
  rm -rf ~/.tmux
fi
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
if [ -f ~/.tmux.conf ]; then
  rm -f ~/.tmux.conf
fi
ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf

# git
if [ -f ~/.gitconfig ]; then
  rm -f ~/.gitconfig
fi
ln -s ~/dotfiles/_gitconfig ~/.gitconfig

# vim
if [ -f ~/.vimrc ]; then
  rm -f ~/.vimrc
fi
ln -s ~/dotfiles/_vimrc ~/.vimrc
if [ -d ~/.vim ]; then
  rm -rf ~/.vim
fi
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ -d ~/.vim/colors ]; then
  rm -rf ~/.vim/colors
fi
ln -s ~/dotfiles/_vim/colors ~/.vim/colors
if [ -d ~/.vim/ftdetect ]; then
  rm -f ~/.vim/ftdetect
fi
ln -s ~/dotfiles/_vim/ftdetect ~/.vim/ftdetect

# xvim
if [ -f ~/.xvimrc ]; then
  rm -f ~/.xvimrc
fi
ln -s ~/dotfiles/_xvimrc ~/.xvimrc

# powerline
if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi
if [ -d ~/.config/powerline ]; then
  rm -rf ~/.config/powerline
fi
ln -s ~/dotfiles/_config/powerline ~/.config/powerline

# tig
if [ -f ~/.tigrc ]; then
  rm -f ~/.tigrc
fi
ln -s ~/dotfiles/_tigrc ~/.tigrc

# install plugins
echo '
### Please execute these commands. ###
~/.tmux/plugins/tpm/bin/install_plugins
vim -c PlugUpdate
exec $SHELL -l
zplug update --self
'

# iTerm2 theme
# https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Mathias.itermcolors
