#!/bin/bash

if test ! "$(uname)" = "Darwin"; then
  exit 0
fi


defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock magnification -float 1.0
defaults write com.apple.dock mineffect -string "genie"

defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true

# Vim + VScode
defaults delete -g ApplePressAndHoldEnabled
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false
defaults write com.vscodium ApplePressAndHoldEnabled -bool false

