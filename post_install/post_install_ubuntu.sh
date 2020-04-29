#!/bin/bash

# ubuntu 20.04 (focal)

# upgrade 
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

# tweeks and extensions
sudo apt install -y gnome-tweaks &&
sudo apt install -y gnome-shell-extensions &&
sudo apt install -y gnome-shell-extension-weather
sudo apt install -y x11-utils &&
sudo apt install -y gir1.2-gtop-2.0 lm-sensors gnome-shell-extension-prefs
# after: press Alt + F2 and enter r in the box

# git
sudo add-apt-repository ppa:git-core/ppa && 
sudo apt update &&
sudo apt install -y git

# dash-to-dock
git clone https://github.com/micheleg/dash-to-dock.git
make
make install

# theme
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt -y update
sudo apt -y install flat-remix-gtk

# icons
wget -c https://launchpadlibrarian.net/468844787/paper-icon-theme_1.5.728-202003121505~daily~ubuntu18.04.1_all.deb &&
sudo dpkg -i paper*.deb &&
sudo apt install -f &&
rm https://launchpadlibrarian.net/468844787/paper-icon-theme_1.5.728-202003121505~daily~ubuntu18.04.1_all.deb

# shell
sudo apt install -y autoconf automake libgtk-3-dev &&
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme &&
./autogen.sh --prefix=/usr &&
sudo make install

# gparted
sudo apt install -y gparted

# gedit
sudo apt install -y gedit

# screenfetch
sudo apt install -y screenfetch

# speedtest
sudo apt install -y speedtest-cli &&

# htop
sudo apt install -y htop &&

# inkscape
sudo apt install -y inkscape &&

# flameshot
sudo apt install -y flameshot
  
# gdal
sudo apt install -y gdal-bin

# grass
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3 &&
echo -e "\ndeb https://qgis.org/ubuntu focal main" | sudo tee -a /etc/apt/sources.list &&
sudo apt update
sudo apt install -y grass

# qgis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3 &&
echo -e "\ndeb https://qgis.org/ubuntu focal main" | sudo tee -a /etc/apt/sources.list &&
sudo apt update &&
sudo apt install -y qgis qgis-plugin-grass saga &&
  
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

# stacer
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt update
sudo apt install stacer

# fonts
sudo apt install -y ubuntu-restricted-extras

## flatpak ------------------------------------------------------------------------------------
# flatpak
sudo apt install -y flatpak &&
sudo apt install -y gnome-software-plugin-flatpak &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# spotify
flatpak install -y flathub com.spotify.Client

# sublime
flatpak install -y flathub com.sublimetext.three

# skype
flatpak install -y flathub com.skype.Client

# gimp
# flatpak install -y flathub org.gimp.GIMP

# telegram
flatpak install -y flathub org.telegram.desktop

# mendeley
flatpak install -y flathub com.elsevier.MendeleyDesktop

## dpkgs --------------------------------------------------------------------------------------
# chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb &&
sudo apt install -fy &&
rm google-chrome-stable_current_amd64.deb

# rstudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5001-amd64.deb
sudo dpkg -i rstudio-1.2.5001-amd64.deb
sudo apt install -fy
rm rstudio-1.2.5001-amd64.deb

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
