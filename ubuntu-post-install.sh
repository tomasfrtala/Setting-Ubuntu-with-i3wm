#/bin/bash

##
## Standard applications
##
sudo apt-get -y install \
pidgin synaptic vlc redshift-gtk \
unetbootin gparted \
wine \
ppa-purge

##
## Applications for academic research
##
sudo apt-get -y install \
texstudio texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-lang-czechslovak texlive-lang-english

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

##
## Switch from bash to zsh and apply theme for it
##
apt-get -y install \
zsh powerline fonts-powerline
git clone https://github.com/bhilburn/powerlevel9k.git ~/.powerlevel9k
echo 'source  ~/.powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc

##
## Add coloring output and aliases from bash
##
echo "alias ls='ls --color=auto'"
echo "alias grep='grep --color=auto'"
echo "alias fgrep='fgrep --color=auto'"
echo "alias egrep='egrep --color=auto'"
echo "alias ll='ls -alF'"
echo "alias la='ls -A'"
echo "alias l='ls -CF'"

##
## Change needs to be performed manually
## So run the command bellow:
# chsh

#For keyboard shortcuts
#https://www.reddit.com/r/i3wm/comments/4fy0dn/ubuntu_1604_system_settings/
