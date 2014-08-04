#!/bin/bash

DIR=`dirname $0`

if [ ! -n "$DOTFILES_DIR" ]; then
  DOTFILES_DIR=~/.dotfiles
fi

# dotfile dir
ln -sf $DIR $DOTFILES_DIR

DOT_FILES=( .zshrc .gemrc .gitconfig .npmrc .tmux.conf .tmuxinator .vim .vimrc .gvimrc .ssh)

for file in ${DOT_FILES[@]}
do
  ln -sf $DOTFILES_DIR/$file $HOME/
done

# setup powerline custom config
[ ! -d ~/.config ] && mkdir ~/.config
ln -sf $DOTFILES_DIR/.config/powerline ~/.config/powerline

# install oh-my-zsh
[ ! -d ~/.oh-my-zsh ] && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# install neobundle.vim
[ ! -d ~/.vim/.bundle ] && mkdir -p ~/.vim/.bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/.bundle/neobundle.vim && echo "you should run following command to setup plugins ->  vim -c ':NeoBundleInstall'"

# Install HomeBrew
if [ `uname` = "Darwin" ]; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  cd $DOTFILES_DIR
  brew bundle
  brew cask alfred link
fi
