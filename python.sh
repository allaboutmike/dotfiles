#!/bin/bash

# Here we go.. ask for the administrator password upfront and run a
# keep-alive to update existing `sudo` time stamp until script has finished
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Linting support
pip install flake8
pip install flake8-docstrings
pip install hacking

# pygame support
pip install hg+http://bitbucket.org/pygame/pygame
pip install SimpleGUICS2Pygame

# XQuartz is needed for X11 support
echo "Remember to install XQuartz from http://xquartz.macosforge.org/"
