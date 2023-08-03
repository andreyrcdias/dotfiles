#!/bin/bash

if test ! "$(uname)" = "Darwin"
  then exit 0
fi

brew leaves > leaves
brew list --cask > casks
