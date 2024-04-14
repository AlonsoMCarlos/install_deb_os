#!/bin/bash

if  ! command -v unzip &> /dev/null ; then
    echo "unzip command not found. Please install unzip and try again."
    exit 1
fi

if ! command -v curl &> /dev/null ; then
    echo "curl command not found. Please install curl and try again."
    exit 1
fi


# Install fonts
echo "Installing fonts..."
mkdir -p /tmp/fonts
echo "Downloading CascadisCond..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip -o /tmp/CascadiaCode.zip
unzip /tmp/CascadiaCode.zip -d /tmp/fonts/CascadiaCode

echo "Downloading DaddyTimeMono..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/DaddyTimeMono.zip -o /tmp/DaddyTimeMono.zip
unzip /tmp/DaddyTimeMono.zip -d /tmp/fonts/DaddyTimeMono

echo "Downloading FantasqueSansMono..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FantasqueSansMono.zip -o /tmp/FantasqueSansMono.zip
unzip /tmp/FantasqueSansMono.zip -d /tmp/fonts/FantasqueSansMono

echo "Downloading FiraCode..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip -o /tmp/FiraCode.zip
unzip /tmp/FiraCode.zip -d /tmp/fonts/FiraCode

echo "Downloading IvosevkaTerm..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/IosevkaTerm.zip -o /tmp/IosevkaTerm.zip
unzip /tmp/IosevkaTerm.zip -d /tmp/fonts/IosevkaTerm

echo "Downloading Iosevka..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip -o /tmp/Iosevka.zip
unzip /tmp/Iosevka.zip -d /tmp/fonts/Iosevka

echo "Downloading JetBrainsMono..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip -o /tmp/JetBrainsMono.zip
unzip /tmp/JetBrainsMono.zip -d /tmp/fonts/JetBrainsMono

echo "Downloading Hack..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip -o /tmp/Hack.zip
unzip /tmp/Hack.zip -d /tmp/fonts/Hack

# Move fonts to the fonts directory
echo "Moving fonts to the fonts directory..."
mv /tmp/fonts/* ~/.local/share/fonts

# Clean up
echo "Cleaning up..."
rm -rf /tmp/fonts

# Update font cache
fc-cache -f -v

echo "Fonts installed successfully!"

