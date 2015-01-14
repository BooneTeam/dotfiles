#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc coreutils spark
brew install openssl
brew install wget
brew install redis
brew install mysql
brew install postgresql
#Install Cask
brew install caskroom/cask/brew-cask

#Install Cask Packages
brew cask install google-chrome
brew cask install spotify

brew cask install alfred
brew cask install flux

brew cask install virtualbox
brew cask install vagrant

brew cask install rubymine
brew cask install phpstorm
brew cask install sequel-pro
brew cask install iterm2 

exit 0
