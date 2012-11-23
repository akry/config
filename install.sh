#!/bin/bash

set -e

files='
	zshrc
	emacs.el
	vimrc
	tmux.conf
'
for file in ${files[@]}; do
	echo "move ${file} to ~/.${file}"
	cp ./${file} ~/.${file}
done
