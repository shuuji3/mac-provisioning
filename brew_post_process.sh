#!/bin/bash

# link brew cask apps
sudo brew linkapps

# fish
if ! cat /etc/shells | grep fish; then
    sudo echo /usr/local/bin/fish  >> /etc/shells
fi
if ! echo $SHELL | grep fish; then
    chsh -s /usr/local/bin/fish
fi

# zfz
if ! which fzf; then
    /usr/local/opt/fzf/install all
fi

# install nik collection
if [ ! -d '/Applications/Nik Collection' ]; then
    open -a 'nik collection'
fi

# give privilege to docker
if ! which docker; then
    open -a docker
fi
