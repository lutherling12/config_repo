#!/bin/bash

if [ ! -d "$HOME/.config" ]; then
  mkdir $HOME/.config
fi

for dir in $(ls -d */); do
  echo "Making symlink for $dir in $HOME/.config..."
  if [ -h "$HOME/.config/$dir" ]; then
    echo "Symbolic link to $dir already exists!"
  elif [ -d "$HOME/.config/$dir" ]; then
    echo "Directory $HOME/.config/$dir already exists!"
  else
    ln -s "$PWD/$dir" "$HOME/.config/"
  fi
done
