#!/bin/bash

"$S" "$HEREP/zshrc" "$OUT/.zshrc"

# Plugins
if [ $(uname -s) == "Linux" ]; then
  plugins_dir="$HOME/.zsh"
  mkdir -p "$plugins_dir"

  git clone --depth 1 -- https://github.com/zsh-users/zsh-syntax-highlighting "$plugins_dir/zsh-syntax-highlighting"
  source "$plugins_dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

  git clone --depth 1 -- https://github.com/zsh-users/zsh-autosuggestions "$plugins_dir/zsh-autosuggestions"
  source "$plugins_dir/zsh-autosuggestions/zsh-autosuggestions.zsh"

  git clone --depth 1 -- https://github.com/zsh-users/zsh-completions "$plugins_dir/zsh-completions"
  source "$plugins_dir/zsh-completions/zsh-completions.zsh"
else
  # brew install zsh-syntax-highlighting zsh-autosuggestions zsh-completions
  # macOS installation
  brew_prefix="$(brew --prefix)"

  # Source zsh-syntax-highlighting
  source "$brew_prefix/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

  # Source zsh-autosuggestions
  source "$brew_prefix/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

  # Source zsh-completions
  source "$brew_prefix/share/zsh-completions/zsh-completions.zsh"
fi

