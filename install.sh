#!/bin/bash

set -e

. ./files

for file in ${files[@]}; do
  [ ~/.${file} -ot ${file} ] && {
	  # echo "move ${file} to ~/.${file}"
	  cp ./${file} ~/.${file}
  } || :
done
