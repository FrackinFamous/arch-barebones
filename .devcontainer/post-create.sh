#!/bin/bash
set -eux
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git openssh curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source $NVM_DIR/nvm.sh
nvm install --lts
nvm use --lts
npm install -g @google/gemini-cli
