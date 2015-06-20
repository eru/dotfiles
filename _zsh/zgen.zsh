# load zgen
source ~/.zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
  echo "Creating a zgen save"

  # Load the oh-my-zsh's library.
  zgen oh-my-zsh

  # plugins
  zgen oh-my-zsh git
  zgen oh-my-zsh git-flow
  zgen oh-my-zsh github
  zgen oh-my-zsh tmux
  zgen oh-my-zsh heroku
  zgen oh-my-zsh pip
  zgen oh-my-zsh lein
  zgen oh-my-zsh autojump
  zgen oh-my-zsh extract
  zgen oh-my-zsh oh-my-zshr
  zgen oh-my-zsh coffee
  zgen oh-my-zsh docker
  zgen oh-my-zsh history
  zgen oh-my-zsh node
  zgen oh-my-zsh npm
  zgen oh-my-zsh rsync
  zgen oh-my-zsh tmux
  zgen oh-my-zsh vagrant
  zgen oh-my-zsh web-search

  # OS別の設定
  case "${OSTYPE}" in
    darwin*)
    zgen oh-my-zsh osx
    zgen oh-my-zsh xcode
    zgen oh-my-zsh brew
    zgen oh-my-zsh brew-cask
    ;;
    linux*)
    zgen oh-my-zsh yum
    zgen oh-my-zsh systemd
    ;;
  esac

  # Syntax highlighting oh-my-zsh.
  zgen load zsh-users/zsh-syntax-highlighting src

  # Completions oh-my-zsh.
  zgen load zsh-users/zsh-completions src

  # theme
  #zgen oh-my-zsh themes/arrow

  # save all to init script
  zgen save
fi
