#!/usr/bin/env bash
set -eou pipefail
IFS=$'\n\t'

if [[ "$OSTYPE" == linux* ]]; then
   hash tmux || sudo apt-get install tmux
elif [[ "$OSTYPE" == darwin* ]]; then
   hash tmux || brew install tmux
   hash reattach-to-user-namespace || brew install reattach-to-user-namespace
fi
