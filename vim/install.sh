#!/bin/bash

mkdir -p ~/.vim/colors

wget https://raw.githubusercontent.com/drsooch/gruber-darker-vim/refs/heads/master/colors/GruberDarker.vim -O ~/.vim/colors/gruber-darker.vim

"$S" "$HEREP/vimrc" "$OUT/.vimrc"
