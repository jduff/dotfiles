#!/bin/bash

# This is not tested, basically a running list of things

# Install homebrew http://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# So we can install casks
brew install caskroom/cask/brew-cask

# Packages
brew install chruby
brew install git
brew install coreutils
brew install vim --with-python3
brew install neovim
brew install fzf
brew install the_silver_searcher
brew install python
brew install ctags
brew install heroku
brew install postres
brew services # Installs and sets up homebrew services manager

# Casks
brew cask install iterm2
brew cask install google-chrome
brew cask install unity
brew cask install visual-studio-code
brew cask install 1password
brew cask install dropbox
brew cask install evernote # I know, I know...
brew cask install skitch
brew cask install pgadmin4

# Vim-plug vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Vim-plug nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Python Autocomplete
pip3 install jedi
