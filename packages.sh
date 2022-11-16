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
brew install ripgrep
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

# Python Autocomplete
pip3 install jedi
