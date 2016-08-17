#/bin/bash

##
## Standard applications
##
sudo apt-get -y install \
pidgin synaptic vlc redshift-gtk \
unetbootin gparted \
wine \
ppa-purge \

##
## Applications for academic research
##
sudo apt-get -y install \
texstudio texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-lang-czechslovak texlive-lang-english \ # academic research

##
## Applications for development 
##
sudo apt-get -y install \
git clang cmake vim mc

##
## Useful utilites
##
sudo apt-get -y install \
arandr htop terminator

##
## Setup Solarized theme for terminator
##
git clone https://github.com/ghuntley/terminator-solarized.git
cd terminator-solarized
mkdir -p ~/.config/terminator/
touch ~/.config/terminator/config
cp config ~/.config/terminator

#For keyboard shortcuts
#https://www.reddit.com/r/i3wm/comments/4fy0dn/ubuntu_1604_system_settings/
