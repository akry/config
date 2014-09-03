#!/bin/bash

set -e

directory=$(cd $(dirname $0); pwd)
files=(`ls ${directory}/config`)

for file in ${files[@]}; do
	[ ~/.${file} -nt ${file} ] && {
		echo "copy ~/.${file} to ${directory}/config/${file}"
		cp ~/.${file} ${directory}/config/${file}
	} || :
done
