#!/bin/bash

files='
	zshrc
	emacs.el
	vimrc
	tmux.conf
'
for file in ${files[@]}; do
  [ ~/.${file} -ot ${file} ] && {
	  echo "move ${file} to ~/.${file}"
	  cp ./${file} ~/.${file}
  } || :
done
