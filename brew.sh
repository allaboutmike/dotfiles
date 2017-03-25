#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Don't forget to add `$(brew --prefix coreutils)/libexec/gnubin` to
# the `$PATH`
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

# Note: Add /usr/local/bin/bash to /etc/shells before running `chsh`
brew install bash
brew tap homebrew/versions
brew install bash-completion2

if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
	echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
	chsh -s /usr/local/bin/bash;
fi;

# More recent versions of macOS tools
brew install vim --override-system-vi
brew install wget --with-iri
brew install homebrew/dupes/openssh
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# Misc stuff
brew install m-cli
brew install mas

# Javascript stuff
brew install node
brew install ringojs
brew install rhino

# Java stuffs
# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

brew install ack
brew install maven
brew install git
brew install mercurial
brew install kotlin
brew install lua

# Python stuffs
brew install python
brew install python3
brew install pyenv
brew install pyenv-virtualenv

# To support pygame
brew install sdl sdl_image sdl_mixer portmidi

# Database stuffs
brew install mysql

# Go lang stuffs
brew install go --cross-compile-common

brew install youtube-dl
brew install ffmpeg

# Install casks to sensible locations
brew tap caskroom/cask 
brew tap caskroom/versions

brew cask install iterm2
brew cask install macvim

# Install and link alfred
brew cask install alfred

brew cask install dropbox
brew cask install vlc
brew cask install flux
brew cask install virtualbox
brew cask install vagrant

brew cask install the-unarchiver
brew cask install appcleaner
brew cask install atom

brew cask install java
brew cask install eclipse-java
brew cask install intellij-idea-ce

brew cask install dash
brew cask install google-drive
brew cask install geektool

brew cleanup
brew cask cleanup

