#!/usr/local/bin/fish

# link brew cask apps
sudo brew linkapps

# fish
if not cat /etc/shells | grep fish
    sudo echo /usr/local/bin/fish  >> /etc/shells
end
if not echo $SHELL | grep fish
    chsh -s /usr/local/bin/fish
end

# zfz
if not which fzf
    /usr/local/opt/fzf/install all
end

# install nik collection
if not [ -d '/Applications/Nik Collection' ]
   open -a 'nik collection'
end
    
# give privilege to docker
if not which docker
    open -a docker
end

# mactex
if not [ -f /usr/local/texlive/2016/texmf-var/fonts/map/dvipdfmx/updmap/kanjix.map ]
    sudo tlmgr update --self --all
    cd /usr/local/texlive/2016/texmf-dist/scripts/cjk-gs-integrate
    sudo perl cjk-gs-integrate.pl --link-# TODO: exmf --force
    sudo mktexlsr
    sudo kanji-config-updmap-sys hiragino-elcapitan-pron
end
