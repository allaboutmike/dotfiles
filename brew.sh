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
brew upgrade

brew tap homebrew/dupes

# Note: update .bash_profile with PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
brew install coreutils
brew install findutils
# Note: Add /usr/local/bin/bash to /etc/shells
brew install bash
brew install bash-completion

# More recent versions of OS X tools
brew install vim --override-system-vi
brew install wget --with-iri
brew install homebrew/dupes/openssh
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/dupes/php55 --with-gmp

brew install ringojs
brew install narwhal
brew install rhino

# Java stuffs
brew install ack
brew install maven
brew install git
brew install mercurial
brew install kotlin
brew install lua

# Python stuffs
brew install python
brew install python3
# To support pygame
brew install sdl sdl_image sdl_mixer sdl_tff portmidi

# Go lang stuffs
brew install go --cross-compile-common

brew install youtube-dl
brew install ffmpeg

# Install casks to sensible locations
brew tap caskroom/cask 
# brew tap caskroom/versions

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
brew cask install kitematic

brew cask install geektool
brew cleanup
brew cask cleanup

