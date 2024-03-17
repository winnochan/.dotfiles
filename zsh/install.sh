#!/usr/bin/env bash

file_dir=$(cd $(dirname "$0"); pwd)
echo "source $file_dir/zshrc" > $HOME/.zshrc
echo "source $file_dir/zshenv" > $HOME/.zshenv
