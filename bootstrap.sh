#!/usr/bin/env bash
set -e

#####
# Setup brew

if ! command -v brew >/dev/null; then
  echo "Installing Homebrew..."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

#####
# Install apps
brew bundle



####
# Setup Aptbundle
curl -fsSL https://raw.githubusercontent.com/apt-bundle/apt-bundle/main/install.sh | sudo bash

####
# Install packages
sudo apt-bundle
