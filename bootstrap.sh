#!/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# clone this mac-provisioning repository itself
mkdir ~/src/ && cd ~/src/
git clone https://github.com/shuuji3/mac-provisioning.git
cd mac-provisioning/

# install ansible
brew install ansible

# play ansible
ansible-playbook -i hosts localhost.yaml -v
