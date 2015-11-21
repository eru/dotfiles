# load zgen
source ~/.zsh/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
  echo "Creating a zgen save"

  # Load the oh-my-zsh's library.
  zgen oh-my-zsh

  # plugins
  zgen oh-my-zsh plugins/autojump
  zgen oh-my-zsh plugins/brew
  zgen oh-my-zsh plugins/bundler
  zgen oh-my-zsh plugins/cake
  zgen oh-my-zsh plugins/cakephp3
  zgen oh-my-zsh plugins/coffee
  zgen oh-my-zsh plugins/cpanm
  zgen oh-my-zsh plugins/composer
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/docker-compose
  zgen oh-my-zsh plugins/extract
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/git-flow
  zgen oh-my-zsh plugins/heroku
  zgen oh-my-zsh plugins/history
  zgen oh-my-zsh plugins/lein
  zgen oh-my-zsh plugins/mosh
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/pyenv
  zgen oh-my-zsh plugins/rsync
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/vagrant
  zgen oh-my-zsh plugins/web-search
  zgen oh-my-zsh plugins/zsh_reload

  # OS別の設定
  case "${OSTYPE}" in
    darwin*)
    zgen oh-my-zsh plugins/brew-cask
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/xcode
    ;;
    linux*)
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/yum
    ;;
  esac

  # Syntax highlighting oh-my-zsh.
  zgen load zsh-users/zsh-syntax-highlighting

  # Completions oh-my-zsh.
  zgen load zsh-users/zsh-completions src

  # next generation cd
  zgen load b4b4r07/enhancd

  # autosuggestions should be loaded last
  zgen load tarruda/zsh-autosuggestions

  # theme
  #zgen oh-my-zsh plugins/themes/arrow

  # save all to init script
  zgen save
fi

# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
bindkey '^f' vi-end-of-line
