source ~/dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-flow
antigen bundle github
antigen bundle tmux
antigen bundle yum
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle autojump

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Completions bundle.
antigen bundle zsh-users/zsh-completions
[[ -d ~/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions.git/src ]] && fpath=(~/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions.git/src $fpath)

# Load the theme.
#antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply
