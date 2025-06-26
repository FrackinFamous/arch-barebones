#!/bin/bash
set -eux

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git openssh curl

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Add nvm to .bashrc for all future shells
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc

# Source nvm in the current shell
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Node LTS and Gemini CLI
nvm install --lts
nvm use --lts
npm install -g @google/gemini-cli
