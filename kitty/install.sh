#!/bin/bash

if test ! "$(uname)" = "Darwin"; then
  exit 0
fi

"$S" "$HEREP/kitty.conf" "$OUT/.config/kitty/kitty.conf"

