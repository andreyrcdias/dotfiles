#!/bin/bash

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