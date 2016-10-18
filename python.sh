#!/bin/bash

# Here we go.. ask for the administrator password upfront and run a
# keep-alive to update existing `sudo` time stamp until script has finished
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Dev Support
pip3 install virtualenv
pip3 install nose
pip3 install pytest
pip3 install pytest-cov
pip3 install pylint
pip3 install pep8
pip3 install pymysql

#Linting support
pip3 install flake8
pip3 install flake8-docstrings
pip3 install hacking

# pygame support
pip3 install hg+http://bitbucket.org/pygame/pygame
pip3 install SimpleGUICS2Pygame

# XQuartz is needed for X11 support
echo "Remember to install XQuartz from http://xquartz.macosforge.org/"
