#!/bin/bash

set -e

. ./files

for file in ${files[@]}; do
	echo "copy ~/.${file} to ./${file}"
	cp ~/.${file} ./${file}
done
