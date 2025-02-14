#!/bin/bash

# https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

"$S" "$HEREP/tmux.conf" "$OUT/.tmux.conf"

