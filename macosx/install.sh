#!/bin/bash

if test ! "$(uname)" = "Darwin"; then
  exit 0
fi

# Read `defaults` and evaluate each line
while IFS= read -r line; do
  if [[ ! "$line" =~ ^# ]]; then
    # echo "$line"
    eval "$line"
  fi
done < defaults

