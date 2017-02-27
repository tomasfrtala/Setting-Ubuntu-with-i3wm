#/bin/bash

##
## Standard applications
##
sudo apt-get -y install \
pidgin synaptic vlc redshift-gtk \
unetbootin gparted \
ppa-purge

##
## Google Earth installation
##
# Download google earth but the 32bit version although you have 64bit system because the 64bit installer is broken.
# sudo dpkg -i google-earth-stable_current_i386.deb
# sudo apt-get -f install
# Before you can run the application, optional step is to update the launcher due present bug
# https://bugs.launchpad.net/ubuntu/+source/googleearth-package/+bug/1160289
# and you can run the google-earth

##
## Adding Wine 1.8
##
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get -y install wine1.8

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
## Achieving shortcut for colorful git log
## Based on these articles: http://think-like-a-git.net/sections/graphs-and-git/visualizing-your-git-repository.html
## 			    http://sweetme.at/2013/09/13/git-logs-with-color/
echo '# Based on these articles
# http://think-like-a-git.net/sections/graphs-and-git/visualizing-your-git-repository.html
# http://sweetme.at/2013/09/13/git-logs-with-color/
[alias]
        lg = log --oneline --abbrev-commit --all --graph --decorate --color' >> ~/.gitconfig

##
## Useful utilites
##
sudo apt-get -y install \
arandr htop terminator meld

##
## Install latest Java
##
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer

##
## Setup Solarized theme for terminator
##
#git clone https://github.com/ghuntley/terminator-solarized.git
#cd terminator-solarized
#mkdir -p ~/.config/terminator/
#touch ~/.config/terminator/config
#cp config ~/.config/terminator
# Additionally you need to swap entries of
# [[default]] to [[solarized-dark]] in the file ~/.config/terminator/config
# to be able always use solarize-dark theme

##
## Switch from bash to zsh and apply theme for it
##
sudo apt-get -y install \
zsh powerline fonts-powerline
git clone https://github.com/bhilburn/powerlevel9k.git ~/.powerlevel9k
echo 'export TERM="xterm-256color"' >> ~/.zshrc
echo 'source  ~/.powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc

##
## Add coloring output and aliases from bash
##
echo "## Coloring output" >> ~/.zshrc
echo "alias ls='ls --color=auto'" >> ~/.zshrc
echo "alias grep='grep --color=auto'" >> ~/.zshrc
echo "alias fgrep='fgrep --color=auto'" >> ~/.zshrc
echo "alias egrep='egrep --color=auto'" >> ~/.zshrc
echo "alias ll='ls -alF'" >> ~/.zshrc
echo "alias la='ls -A'" >> ~/.zshrc
echo "alias l='ls -CF'" >> ~/.zshrc

##
## Adding history
##
echo "## For remembering zsh history" >> ~/.zshrc
echo "SAVEHIST=100000" >> ~/.zshrc
echo "HISTFILE=~/.zsh_history" >> ~/.zshrc

##
## Add coloring progress bar for apt
## Based on this: http://www.omgubuntu.co.uk/2014/04/how-to-enable-apt-terminal-progress-bar
echo 'Dpkg::Progress-Fancy "1";' >> /etc/apt/apt.conf.d/99progressbar

##
## Change needs to be performed manually
## So run the command bellow:
# chsh

#For keyboard shortcuts
#https://www.reddit.com/r/i3wm/comments/4fy0dn/ubuntu_1604_system_settings/
