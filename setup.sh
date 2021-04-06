#!/bin/bash
sudo apt install zsh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
cp ./.zshrc ~/.zshrc
source ~/.zshrc
