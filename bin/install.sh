set -e

if [ ! -n "$DOTFILES_DIR" ]; then
  DOTFILES_DIR=~/.dotfiles
fi

echo "\033[0;34mCloning dotfiles...\033[0m"
hash git >/dev/null 2>&1 && /usr/bin/env git clone https://github.com/ispern/dotfiles.git $DOTFILES_DIR || {
  echo "git not installed"
  exit
}

echo "\033[0;34msetup dotfiles...\033[0m"
cd $DOTFILES_DIR && chmod +x setup.sh && sh setup.sh
echo "\033[0;34msetup complete!\033[0m"
