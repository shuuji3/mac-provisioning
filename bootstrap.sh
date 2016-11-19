#!/bin/bash

# install homebrew
if ! which brew; then
    echo installing homebrew...
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install ansible
if ! which ansible; then
    echo installing ansible...
    brew install ansible
fi

# clone this mac-provisioning repository itself
echo cloning mac-provisioning repository...
mkdir -p ~/src/ && cd ~/src/
git clone https://github.com/shuuji3/mac-provisioning.git
cd mac-provisioning/

# play ansible
echo play ansible🎶
ansible-playbook -i hosts localhost.yaml -v
