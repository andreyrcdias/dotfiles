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
)

if [ $(uname -s) == "Darwin" ]; then
  projects+=("brew")
fi

echo "Symlinking files..."
S="$HERE/symlink.sh"
for project in "${projects[@]}"; do
  echo "($project)"
  HEREP="$HERE/$project"
  . "$HEREP/install.sh"
done
