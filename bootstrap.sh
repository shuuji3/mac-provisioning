#!/bin/bash

# install brew
echo installing homebrew...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install ansible
echo installing ansible...
brew install ansible

# clone this mac-provisioning repository itself
echo cloning mac-provisioning repository...
mkdir ~/src/ && cd ~/src/
git clone https://github.com/shuuji3/mac-provisioning.git
cd mac-provisioning/

# play ansible
echo play ansible🎶
ansible-playbook -i hosts localhost.yaml -v
