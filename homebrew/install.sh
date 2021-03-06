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
brew tap homebrew/dupes
brew install grc coreutils spark
brew install openssl
brew install wget
brew install mysql
brew install postgresql
brew install git
brew install git-extras
brew install bash-completion
brew install autoconf automake apple-gcc42
brew install ghostscript
brew install imagemagick
brew install mutt
brew install node
brew install redis
brew install mongodb
brew install qt
brew install bfg
brew install rbenv
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
brew cask install webstorm
brew cask install sequel-pro
brew cask install robomongo
brew cask install iterm2
brew cask install mou
brew cask install slack
brew cask install dropbox
brew cask install google-hangouts
brew cask install rescuetime
brew cask install postman
exit 0
