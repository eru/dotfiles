# load zgen
source ~/.zsh/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
  echo "Creating a zgen save"

  # Load the oh-my-zsh's library.
  zgen oh-my-zsh

  # plugins
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/git-flow
#  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/heroku
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/lein
  zgen oh-my-zsh plugins/autojump
  zgen oh-my-zsh plugins/extract
  zgen oh-my-zsh plugins/bundler
  zgen oh-my-zsh plugins/coffee
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/history
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/rsync
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/vagrant
  zgen oh-my-zsh plugins/web-search
  zgen oh-my-zsh plugins/zsh_reload

  # OS別の設定
  case "${OSTYPE}" in
    darwin*)
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/xcode
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/brew-cask
    ;;
    linux*)
    zgen oh-my-zsh plugins/yum
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/docker-compose
    ;;
  esac

  # Syntax highlighting oh-my-zsh.
  zgen load zsh-users/zsh-syntax-highlighting

  # Completions oh-my-zsh.
  zgen load zsh-users/zsh-completions src

  # theme
  #zgen oh-my-zsh plugins/themes/arrow

  # save all to init script
  zgen save
fi
