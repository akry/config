#!/bin/bash

set -e

. ./files

for file in ${files[@]}; do
	[ ~/.${file} -nt ${file} ] && {
		echo "copy ~/.${file} to ./${file}"
		cp ~/.${file} ./${file}
	} || :
done
