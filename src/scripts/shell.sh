#!/bin/bash

workingDirectory=$1

# Change root and user shell to zsh
if [[ -f "/usr/bin/zsh" ]]; then
    sudo chsh -s "$(which zsh)"
    chsh -s "$(which zsh)"
fi

### Install fonts ###

# Awesome Terminal Fonts
if [[ ! -d "/usr/share/fonts/awesome-terminal-fonts/" ]]; then
    # TODO
fi

# Fira Code Fonts
if [[ ! -d "/usr/share/fonts/FiraCode/" ]]; then
    sudo apt install fonts-firacode -y
fi

if [[ ! -d "/usr/share/fonts/TTF/" ]]; then
    # TODO
fi

# Powerline Fonts
if [[ ! -d "/usr/share/fonts/OTF/" ]]; then
    sudo apt install fonts-powerline -y
fi

### Install oh-my-posh ###
if [[ ! -f "/usr/bin/oh-my-posh" ]]; then
    curl -s https://ohmyposh.dev/install.sh | bash -s
fi

### Zsh Plugins ###

# Zsh Autosuggestions
if [[ ! -d "/usr/share/zsh/plugins/zsh-autosuggestions/" ]]; then
    sudo apt install zsh-autosuggestions -y
fi

# Zsh Syntax Highlighting
if [[ ! -d "/usr/share/zsh/plugins/zsh-syntax-highlighting/" ]]; then
    sudo apt install zsh-syntax-highlighting -y
fi

### Terminal Configuration ###

# Zsh configuration
cp "$workingDirectory/src/dotfiles/oh-my-posh/.zshrc" "$HOME/.zshrc"
