#!/usr/bin/env bash
set -eou pipefail
IFS=$'\n\t'

if [[ "$OSTYPE" == darwin* ]]; then
   # add command line tools
   xcode-select --install 2> /dev/null || true

   # install homebrew
   hash brew || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

   # install ripgrep
   hash rg || brew install ripgrep

   # install GNU PGP
   hash gpg || brew install gpg2
   hash keybase || brew install caskroom/cask/keybase

   # install mosh SSH client
   hash mosh || brew install mosh

   # install moreutils for useful command line tools
   hash sponge || brew install moreutils
fi
