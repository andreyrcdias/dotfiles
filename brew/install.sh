#!/bin/bash

if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

if command -v brew &>/dev/null; then
    echo "Homebrew is already installed."
    exit 0
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing leaves..."
LEAVES="$HEREP/leaves"
while IFS= read -r software; do
    echo "($software)"
    brew install "$software"
done < "$LEAVES"

echo "Installing casks..."
CASKS="$HEREP/casks"
while IFS= read -r software; do
    echo "($software)"
    brew install --cask "$software"
done < "$CASKS"
