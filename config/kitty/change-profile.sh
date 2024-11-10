#!/bin/bash

echo "Select a profile:"
echo "   (1) Coding"
echo "   (2) Default"
read -r profile

if [ "$profile" -eq 1 ]; then
  rm ~/.config/kitty/kitty.conf
  cp ~/.config/kitty/kitty-coding.conf ~/.config/kitty/kitty.conf
  
  rm ~/.zshrc
  cp ~/.zshrc-coding ~/.zshrc
  echo "Get in the flow!"

elif [ "$profile" -eq 2 ]; then
  rm ~/.config/kitty/kitty.conf
  cp ~/.config/kitty/kitty-default.conf ~/.config/kitty/kitty.conf
  
  rm ~/.zshrc
  cp ~/.zshrc-default ~/.zshrc
  echo "Have fun!"

else
  echo "What the hell?"
fi
