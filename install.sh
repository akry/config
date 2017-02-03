#!/bin/bash

set -ex

directory=$(cd $(dirname $0); pwd)
conf_dir="${directory}/config"

target_dir=~

cp ${conf_dir}/emacs.el ${target_dir}/.emacs.el
cp ${conf_dir}/config.fish ${target_dir}/.config/fish/config.fish
cp ${conf_dir}/gitconfig ${target_dir}/.gitconfig
cp ${conf_dir}/tmux.conf ${target_dir}/.tmux.conf
cp ${conf_dir}/vimrc ${target_dir}/.vimrc
cp ${conf_dir}/zprofile ${target_dir}/.zprofile
cp ${conf_dir}/zshrc ~/.zshrc
