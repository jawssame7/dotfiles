ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pmcgee"

# plugins
plugins=(brew capistrano command-not-found extract git git-flow git-extras heroku history history-substring-search lein mvn node npm osx pip python rake rbenv redis-cli rsync ruby gem bundler urltools vagrant knife vundle yum atom pow sudo tmux tmuxinator)

export DOTFILES=$HOME/.dotfiles

source $ZSH/oh-my-zsh.sh

## alias設定
[ -f $DOTFILES/zsh/alias.zsh ] && source $DOTFILES/zsh/alias.zsh

## function設定
[ -f $DOTFILES/zsh/function.zsh ] && source $DOTFILES/zsh/function.zsh

## OS固有の設定
case "${OSTYPE}" in
# MacOSX
darwin*)
    [ -f $DOTFILES/zsh/osx.zsh ] && source $DOTFILES/zsh/osx.zsh
    ;;
# Linux
linux*)
    [ -f $DOTFILES/zsh/linux.zsh ] && source $DOTFILES/zsh/linux.zsh
    ;;
esac
