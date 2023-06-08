#!/bin/bash

if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# Finder
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock magnification -float 1.0
defaults write com.apple.dock mineffect -string "genie"
