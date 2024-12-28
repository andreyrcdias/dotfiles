#!/usr/bin/env bash

set -e -E

if [ "$#" -ne "1" ]; then
  echo "Usage: install.sh \$HOME" >&2
  exit 1
fi

HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$1"

cd "$HERE"

projects=(
  bash
  git
  nvim
  tmux
  vim
  zsh
  ghostty
)

if [ $(uname -s) == "Darwin" ]; then
  echo "Installing MacOS apps.."
  projects+=("macosx")
  projects+=("brew")
else
  projects+=("i3")
  echo "Installing aptitude packages..."
  HEREP="$HERE/apt"
  . "$HEREP/install.sh"
fi


echo "Symlinking files..."
S="$HERE/symlink.sh"
for project in "${projects[@]}"; do
  echo "($project)"
  HEREP="$HERE/$project"
  . "$HEREP/install.sh"
done
