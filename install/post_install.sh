#!/bin/bash

## ppas
sudo add-apt-repository -y ppa:grass/grass-stable
sudo add-apt-repository -y ppa:alexlarsson/flatpak
sudo apt update -y

## apps
sudo apt install -y\
 
 default-jre\
 etcher-electron\
 flatpak\
 gnome-software-plugin-flatpak\
 grass\
 gimp\
 inkscape\
 libgdal-dev\
 libreoffice\
 libproj-dev\
 openjdk-11-jre-headless\
 r-cran-curl\
 r-cran-openssl\
 r-cran-xml2\
 rhythmbox\
 sublime-text\
 speedtest-cli\
 spyder3\


## flatpak
flatpak remote-add -y --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# qgis
flatpak install flathub -y org.qgis.qgis

# gnome games
flatpak install flathub -y org.gnome.Games


## deb
# wps
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb
sudo dpkg -iy wps-office_10.1.0.6757_amd64.deb
rm wps-office_10.1.0.6757_amd64.deb

# rstudio
wget https://download1.rstudio.org/rstudio-1.1.463-amd64.deb
sudo dpkg -iy rstudio-1.1.463-amd64.deb
rm rstudio-1.1.463-amd64.deb

# teamviwer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -iy teamviewer_14.0.14470_amd64.deb
rm teamviewer_14.0.14470_amd64.deb

# megasync
wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O megasync.deb
sudo dpkg -iy megasync.deb
sudo dpkg -iy nautilus-megasync.deb
rm megasync.deb
rm nautilus-megasync.deb

# skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -iy skypeforlinux-64.deb
rm skypeforlinux-64.deb

## java
sudo R CMD javareconf -y JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin/jar

# cleanup apt
sudo apt autoremove -y --purge
