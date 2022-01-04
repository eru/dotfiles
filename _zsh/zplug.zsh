# load zplug
source $HOME/.zplug/init.zsh

# plugins
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/cpanm", from:oh-my-zsh, if:"which cpanm"
zplug "plugins/composer", from:oh-my-zsh, defer:2
zplug "plugins/docker", from:oh-my-zsh, if:"which docker"
zplug "plugins/docker-compose", from:oh-my-zsh, if:"which docker-compose"
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/dnf", from:oh-my-zsh, if:"which dnf"
zplug "plugins/git", from:oh-my-zsh, defer:2
zplug "plugins/git-flow", from:oh-my-zsh
zplug "plugins/macos", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]", defer:2
zplug "plugins/pip", from:oh-my-zsh, if:"which pip"

# Completions oh-my-zsh.
zplug "zsh-users/zsh-completions"

# fuzzy finder and next generation cd
zplug "junegunn/fzf", hook-build:"./install --all --key-bindings --no-completion --no-update-rc"
zplug "b4b4r07/enhancd", use:init.sh, on:"junegunn/fzf"

# autosuggestions should be loaded before Syntax highlighting and after compinit
zplug "tarruda/zsh-autosuggestions", defer:3

# Syntax highlighting oh-my-zsh.
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# emoji completion
zplug "stedolan/jq", as:command, rename-to:jq, from:gh-r
zplug "b4b4r07/emoji-cli", on:"stedolan/jq"

# emoji on cli
zplug "mrowa44/emojify", as:command, use:"emojify"

# phpctags
zplug "vim-php/phpctags", hook-build:"composer install && make clean && make", as:command, use:"build/phpctags.phar", rename-to:phpctags, if:"which php"

# self management
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
  zplug install
fi

# zplug check returns true if the given repository exists
if zplug check b4b4r07/enhancd; then
  # setting if enhancd is available
  export ENHANCD_DISABLE_DOT=1
fi

# Then, source plugins and add commands to $PATH
zplug load

# Enable fzf key bindings
if zplug check "junegunn/fzf"; then
  [ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
fi
