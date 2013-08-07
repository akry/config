#!/bin/bash

set -e

files=(`ls $(cd $(dirname $0); pwd)/config`)

for file in ${files[@]}; do
  [ ~/.${file} -ot ${file} ] && {
	  echo "move ${file} to ~/.${file}"
	  cp ./${file} ~/.${file}
  } || :
done
