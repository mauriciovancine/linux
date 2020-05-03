#!/bin/bash

# ubuntu 20.04 (focal)

# upgrade 
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

# tweeks and extensions
sudo apt install -y gnome-tweaks &&
sudo apt install -y gnome-shell-extensions &&
sudo apt install -y chrome-gnome-shell &&
sudo apt install -y gnome-shell-extension-weather &&
sudo apt install -y x11-utils &&
sudo apt install -y gir1.2-gtop-2.0 lm-sensors gnome-shell-extension-prefs &&
mkdir -p ~/.local/share/gnome-shell/extensions &&
git clone https://github.com/corecoding/Vitals.git ~/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com
# after: press Alt + F2 and enter r in the box

# git
sudo add-apt-repository ppa:git-core/ppa && 
sudo apt update &&
sudo apt install -y git

# dash-to-dock
git clone https://github.com/micheleg/dash-to-dock.git &&
cd dash-to-dock &&
make &&
make install

# theme
sudo add-apt-repository ppa:daniruiz/flat-remix &&
sudo apt -y update &&
sudo apt -y install flat-remix-gtk &&

# icons
wget -c https://launchpadlibrarian.net/468844787/paper-icon-theme_1.5.728-202003121505~daily~ubuntu18.04.1_all.deb &&
sudo dpkg -i paper*.deb &&
sudo apt install -f &&
rm paper-icon-theme_1.5.728-202003121505~daily~ubuntu18.04.1_all.deb

# shell
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf &&
git clone https://github.com/vinceliuice/Matcha-gtk-theme.git &&
cd Matcha-gtk-theme &&
./install.sh

# wallpapers
sudo apt-get install -y ubuntu-wallpapers*

# chromium
sudo apt install -y chromium-browser

# gparted
sudo apt install -y gparted

# gedit
sudo apt install -y gedit

# screenfetch
sudo apt install -y screenfetch

# speedtest
sudo apt install -y speedtest-cli

# htop
sudo apt install -y htop

# inkscape
sudo apt install -y inkscape

# flameshot
sudo apt install -y flameshot
  
# gdal
sudo apt install -y gdal-bin

# fonts
sudo apt install -y ubuntu-restricted-extras

# typora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE &&
echo -e "\ndeb https://typora.io/linux ./" | sudo tee -a /etc/apt/sources.list &&
sudo apt update &&
sudo apt install -y typora

# anydesk
sudo su - &&
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add - &&
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list &&
apt update &&
apt install anydesk -y &&
exit

# qgis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3 &&
echo -e "\ndeb https://qgis.org/ubuntu focal main" | sudo tee -a /etc/apt/sources.list &&
sudo apt update &&
sudo apt install -y qgis qgis-plugin-grass saga

# grass
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3 &&
echo -e "\ndeb https://qgis.org/ubuntu focal main" | sudo tee -a /etc/apt/sources.list &&
sudo apt update &&
sudo apt install -y grass grass-gui

# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
sudo apt update &&
sudo apt install -y sublime-text

# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 &&
echo -e "\ndeb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" | sudo tee -a /etc/apt/sources.list &&
sudo apt update &&
sudo apt install -y r-base-core && # r
sudo apt install -y r-base-dev && # devtools
sudo apt install -y libxml2-dev && # devtools
sudo apt install -y libssl-dev && # devtools
sudo apt install -y libcurl4-openssl-dev && # devtools
sudo apt install -y libgdal-dev && # gdal
sudo apt install -y libproj-dev && # gdal
sudo apt install -y libudunits2-dev && # units
sudo apt install -y libcairo2-dev && # mapview
sudo apt install -y libv8-dev && # rmapshaper
sudo apt install -y libprotobuf-dev && # rmapshaper 
sudo apt install -y libjq-dev && # rmapshaper 
sudo apt install -y protobuf-compiler && # rmapshaper 
sudo apt install -y libgmp3-dev && # betapart
sudo apt install -y libgtk2.0-dev && # cairo
sudo apt install -y xvfb && # cairo 
sudo apt install -y xauth && # cairo 
sudo apt install -y xfonts-base && # cairo 
sudo apt install -y libxt-dev && # cairo
sudo apt install -y libgsl-dev && # gsl
sudo apt install -y libmagick++-dev # magick
sudo apt install -y gfortran-7 # ecospat
sudo apt install -y gcc-7 g++-7 # ecospat

# java
sudo apt install -y default-jre default-jdk &&
sudo R CMD javareconf

## flatpak ------------------------------------------------------------------------------------
# flatpak
sudo apt install -y flatpak &&
sudo apt install -y gnome-software-plugin-flatpak &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# spotify
flatpak install -y flathub com.spotify.Client

# skype
flatpak install -y flathub com.skype.Client

# gimp
# flatpak install -y flathub org.gimp.GIMP

# telegram
flatpak install -y flathub org.telegram.desktop

# mendeley
flatpak install -y flathub com.elsevier.MendeleyDesktop

## dpkgs --------------------------------------------------------------------------------------
# rstudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5042-amd64.deb &&
sudo dpkg -i rstudio-1.2.5042-amd64.deb &&
sudo apt install -fy && 
rm rstudio-1.2.5042-amd64.deb

# google earth
wget http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb &&
sudo dpkg -i google-earth-pro-stable_current_amd64.deb &&
sudo apt install -fy &&
rm google-earth-pro-stable_current_amd64.deb

# simplenote
wget -c https://github.com/Automattic/simplenote-electron/releases/download/v1.14.0/Simplenote-linux-1.14.0-amd64.deb &&
sudo dpkg -i Simplenote-linux-1.14.0-amd64.deb &&
sudo apt install -fy &&
rm Simplenote-linux-1.14.0-amd64.deb

## fix broken
sudo apt clean && sudo apt update &&
sudo dpkg --configure -a &&
sudo apt install -f &&
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt update &&
sudo apt autoremove -y &&
sudo apt autoclean -y

# end ----------------------------------------------------------------------
