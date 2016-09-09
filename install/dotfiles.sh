#!/bin/bash

files=(.agignore .bash_profile .bashrc .editrc .eslintrc.yml .gitconfig .haml-lint.yml .inputrc .rspec .rubocop.yml .tmux.conf .vimrc)
for file in ${files[*]}; do
  ln -sf "$(pwd)/$file" ~/$file
done
