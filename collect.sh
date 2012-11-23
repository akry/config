#!/bin/bash

set -e

files='
	tmux.conf
	zshrc
	vimrc
	emacs.el
'

for file in ${files[@]}; do
	echo "copy ~/.${file} to ./${file}"
	cp ~/.${file} ./${file}
done
