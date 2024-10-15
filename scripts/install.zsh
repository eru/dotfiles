#!/usr/bin/env zsh

# denepndencies
if which brew > /dev/null 2>&1; then
  dependenies=()

  # zsh
  dependencies+=("zsh" "sheldon")
  # tmux
  dependencies+=("tmux" "reattach-to-user-namespace")
  # git
  dependencies+=("git" "tig")
  # neovim
  dependencies+=("neovim" "lua" "luarocks" "tree-sitter" "font-sauce-code-pro-nerd-font")
  # thumbnail
  dependencies+=("mpv" "mplayer" "imagemagick")
  # any2zip
  dependencies+=("parallel" "terminal-notifier" "rar")
  # env
  dependencies+=("direnv" "ripgrep" "coreutils" "findutils" "gnu-getopt" "gnu-sed" "gnu-tar" "jq" "yq")

  brew install ${dependencies[@]}
fi

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
if [ -d $HOME/.config/sheldon ]; then
  rm -rf $HOME/.config/sheldon
fi
ln -s $HOME/dotfiles/_config/sheldon $HOME/.config/sheldon

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
if [ -d $HOME/.config/tmux-powerline ]; then
  rm -rf $HOME/.config/tmux-powerline
fi
ln -s $HOME/dotfiles/_config/tmux-powerline $HOME/.config/tmux-powerline

# git
if [ -f $HOME/.gitconfig ]; then
  rm -f $HOME/.gitconfig
fi
ln -s $HOME/dotfiles/_git/gitconfig $HOME/.gitconfig

# vim
if [ -f $HOME/.vimrc ]; then
  rm -f $HOME/.vimrc
fi
if [ -d $HOME/.vim ]; then
  rm -rf $HOME/.vim
fi

# xvim
if [ -f $HOME/.xvimrc ]; then
  rm -f $HOME/.xvimrc
fi

# neovim
if [ -L $HOME/.config/nvim ]; then
  rm -f $HOME/.config/nvim
fi
if [ -d $HOME/.config/nvim ]; then
  rm -rm $HOME/.config/nvim
fi
ln -s $HOME/dotfiles/_config/nvim $HOME/.config/nvim
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

# Alacritty
if [ -d $HOME/.config/alacritty ]; then
  rm -rf $HOME/.config/alacritty
fi
ln -s $HOME/dotfiles/_config/alacritty $HOME/.config/alacritty

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

# direnv
if [ -f $HOME/.direnvrc ]; then
  rm -f $HOME/.direnvrc
fi
ln -s $HOME/dotfiles/_direnvrc $HOME/.direnvrc

# ag
if [ -f $HOME/.agignore ]; then
  rm -f $HOME/.agignore
fi
ln -s $HOME/dotfiles/_agignore $HOME/.agignore

# tabtab
if [ -d $HOME/.config/tabtab ]; then
  rm -rf $HOME/.config/tabtab
fi
ln -s $HOME/dotfiles/_config/tabtab $HOME/.config/tabtab

# install plugins
echo '
### Please execute these commands. ###
$HOME/.tmux/plugins/tpm/bin/install_plugins
exec $SHELL -l
vi -c PlugUpdate
'
