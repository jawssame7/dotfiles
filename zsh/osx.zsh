# Global
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR=/usr/bin/vim
export SHELL=/usr/local/bin/zsh
export TERM="xterm-256color"

# Java
export JAVA_OPTS="-server -Xms1024M -Xmx1024M -XX:PermSize=512m -XX:MaxPermSize=512m -Xss3m"
export _JAVA_OPTIONS="-Xms1024M -Xmx1024M -XX:PermSize=512m -XX:MaxPermSize=512m -Xss3m -Dfile.encoding=UTF-8"
export JAVA6_HOME=/Library/Java/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home

# Android
export ANDROID_SDK=/usr/local/android
export PATH=$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$PATH

# Sencha
export SENCHA_SDK=/usr/local/Sencha/Cmd/current/
export PATH=$SENCHA_SDK:$PATH

# Plyaframework
#export PLAY_DEV=~/WorkSpace/git/Play20/
#export PATH=$PLAY_DEV:$PATH

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
nodebrew use v0.10.26

# rbenv
eval "$(rbenv init - zsh)"

# phpenv
export PATH=$PATH:$HOME/.phpenv/bin
eval "$(phpenv init - zsh)"
export PHPENV_APACHE_MODULE_PATH=$HOME/.phpenv/libexec/apache2/
phpenv global 5.4.26

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# pandoc
export PATH=$HOME/.cabal/bin/:$PATH

# docker
export DOCKER_HOST=tcp://localhost:4243

# Man
export MANPATH=/usr/local/man:$MANPATH
