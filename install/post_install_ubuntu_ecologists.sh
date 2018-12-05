#!/bin/bash

## repository
sudo add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran35/"
sudo add-apt-repository -y "deb https://qgis.org/ubuntu-nightly $(lsb_release -cs) main"

## public keys
wget -O - https://qgis.org/downloads/qgis-2017.gpg.key | gpg --import
gpg --fingerprint CAEB3DC3BDF7FB45
gpg --export --armor CAEB3DC3BDF7FB45 | sudo apt-key add -

## ppas
sudo add-apt-repository -y ppa:grass/grass-stable
sudo apt update -y

## apps
sudo apt install -y\
 default-jre\
 deluge\
 etcher-electron\
 flatpak\
 gnome-software-plugin-flatpak\
 gparted\
 grass\
 gimp\
 inkscape\
 libcairo2-dev\
 libgdal-dev\
 libjpeg-dev\
 libgmp3-dev\
 libgstreamer0.10-0\
 libgstreamer-plugins-base0.10-0\
 libreoffice\
 libproj-dev\
 libssl-dev\
 libudunits2-dev\
 openjdk-11-jre-headless\
 python-qgis\
 qgis\
 qgis-plugin-grass\
 r-base\
 r-base-dev\
 r-cran-curl\
 r-cran-openssl\
 r-cran-rjava\
 r-cran-xml2\
 rhythmbox\
 saga\
 sublime-text\
 speedtest-cli\
 spyder3\


## flatpak
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# qgis
#flatpak install flathub -y org.qgis.qgis

# gnome games
#flatpak install flathub -y org.gnome.Games


## deb
# wps
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb
sudo dpkg -i wps-office_10.1.0.6757_amd64.deb
rm wps-office_10.1.0.6757_amd64.deb

# rstudio
wget https://download1.rstudio.org/rstudio-1.1.463-amd64.deb
sudo dpkg -i rstudio-1.1.463-amd64.deb
rm rstudio-1.1.463-amd64.deb

# teamviwer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
rm teamviewer_amd64.deb

# megasync
wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O megasync.deb
sudo dpkg -i megasync.deb
rm megasync.deb

# skype
#wget https://go.skype.com/skypeforlinux-64.deb
#sudo dpkg -i skypeforlinux-64.deb
#rm skypeforlinux-64.deb

# stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.9/stacer_1.0.9_amd64.deb -O stacer.deb
sudo dpkg -i stacer.deb
rm stacer.deb

## java
#sudo R CMD javareconf -y JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin/jar

## fix broken
sudo apt install -yf --fix-broken 

## cleanup apt
sudo apt autoremove -y --purge
