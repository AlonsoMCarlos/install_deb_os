#!/bin/bash

echo "Installing CLI utilities..."
sudo apt update
sudo apt upgrade -y
utils=(curl wget unzip htop git fish unrar-free p7zip-full fd-find ripgrep bat lsd jq)
sudo apt install -y "${utils[@]}"

echo "Installing volta..."
curl https://get.volta.sh | bash

echo "Installing node..."
volta install node@lts

echo "Installing pnpm..."
volta install pnpm


echo "Installing zoxide..."
curl -sS https://webinstall.dev/zoxide | bash

echo "Install curlie..."
curl -sS https://webinstall.dev/curlie | bash


echo "CLI utilities installed successfully!"
