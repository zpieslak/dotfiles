#!/bin/bash

files=(.agignore .bash_profile .bashrc .editrc .eslintrc .gitconfig .inputrc .rspec .rubocop.yml .tmux.conf .vimrc)
for file in ${files[*]}; do
  ln -sf "$(pwd)/$file" ~/$file
done
