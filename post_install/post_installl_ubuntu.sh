#!/bin/bash

# upgrade 
sudo apt update && sudo apt upgrade -y

## apts --------------------------------------------------------------------------------------
# tweeks
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions
sudo apt install chrome-gnome-shell

# dash-to-panel
git clone https://github.com/home-sweet-gnome/dash-to-panel.git
make install

## apts --------------------------------------------------------------------------------------
# gparted
sudo apt install -y gparted

# screenfetch
sudo apt install -y screenfetch

# speedtest
sudo apt install -y speedtest-cli

# git
sudo add-apt-repository ppa:git-core/ppa && sudo apt update
sudo apt install -y git
    
# gdal
sudo apt install -y gdal-bin

# grass
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6B827C12C2D425E227EDCA75089EBE08314DF160
sudo add-apt-repository "deb http://ppa.launchpad.net/ubuntugis/ppa/ubuntu bionic main"
sudo apt update
sudo apt install -y grass

# qgis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6B827C12C2D425E227EDCA75089EBE08314DF160
sudo add-apt-repository "deb http://ppa.launchpad.net/ubuntugis/ppa/ubuntu bionic main"
sudo apt update
sudo apt install -y qgis qgis-plugin-grass
  
# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu disco-cran35/"
sudo apt update
sudo apt install -y r-base-core # r
sudo apt install -y r-base-dev # devtools
sudo apt install -y libssl-dev # tidyverse
sudo apt install -y libxml2-dev # tidyverse
sudo apt install -y libcurl4-openssl-dev # tidyverse
sudo apt install -y libgdal-dev # gdal
sudo apt install -y libproj-dev # gdal
sudo apt install -y libudunits2-dev # 
sudo apt install -y libcairo2-dev # mapview
sudo apt install -y libgmp3-dev # betapart
sudo apt install -y libgtk2.0-dev # cairo
sudo apt install -y xvfb # cairo 
sudo apt install -y xauth # cairo 
sudo apt install -y xfonts-base # cairo 
sudo apt install -y libxt-dev # cairo

# fonts
sudo apt install -y ubuntu-restricted-extras

# icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt update
sudo apt install -y papirus-icon-theme

## snaps --------------------------------------------------------------------------------------
# snap
sudo apt install -y snap snapd 

# inkscape
sudo snap install inkscape

# libreoffice
sudo apt remove libreoffice* -y
sudo snap install libreoffice

# googletools
sudo snap install googletools-desktop

# simplenote
sudo snap install simplenote

# skype
sudo snap install skype --classic

# gitkraken
sudo snap install gitkraken

# whatsapp desktop
sudo snap install whatsdesk

# slack
sudo snap install slack --classic

## dpkgs --------------------------------------------------------------------------------------
# rstudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo dpkg -i rstudio-1.2.1335-amd64.deb
sudo apt install -fy
rm rstudio-1.2.1335-amd64.deb

# google earth
wget http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo dpkg -i google-earth-pro-stable_current_amd64.deb
sudo apt install -fy
rm google-earth-pro-stable_current_amd64.deb

# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
sudo apt install -fy
rm teamviewer_amd64.deb

# stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/stacer_1.1.0_amd64.deb
sudo dpkg -i stacer_1.1.0_amd64.deb
sudo apt install -fy
rm stacer_1.1.0_amd64.deb

## fix broken
sudo apt clean && sudo apt update
sudo dpkg --configure -a
sudo apt install -f
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt update
sudo apt autoremove -y
sudo apt autoclean -y

# end ----------------------------------------------------------------------