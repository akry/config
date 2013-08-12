#!/bin/bash

set -e

directory=$(cd $(dirname $0); pwd)
files=(`ls ${directory}/config`)

for file in ${files[@]}; do
  if [ ~/.${file} -ot config/${file} -o ! -f ~/.${file} ]; then
    echo "move config/${file} to ~/.${file}"
    cp ./config/${file} ~/.${file}
  fi
done
