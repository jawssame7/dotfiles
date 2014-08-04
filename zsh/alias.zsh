setopt complete_aliases

alias vi="vim"

# zsh
alias zshconfig="vi ~/.zshrc"
alias myzsh="vi $DOTFILES/zsh/"

# ls
alias ls="ls -v"
alias ll='ls -ltraGv'
alias rm_ds="find . -name '.DS_Store' -print -exec rm -r {} ';' ; find . -name ._* -exec rm -r {} ";

# tmux
alias tm='tmux'
alias tma='tmux attach'
alias tmd='tmux dettach'
alias tml='tmux list-window'

# git
alias g='git'
alias gc='git commit'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gs='git status -s -b'
