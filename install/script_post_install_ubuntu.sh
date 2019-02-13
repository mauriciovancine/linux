#!/bin/bash

## upgrade 
sudo apt update -y
sudo apt upgrade -y

## repositories
sudo add-apt-repository ppa:papirus/papirus
sudo apt-add-repository ppa:tista/adapta
sudo add-apt-repository "deb https://qgis.org/ubuntu $(lsb_release -cs) main"
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
sudo add-apt-repository ppa:marutter/c2d4u3.5

## public keys
wget -O - https://qgis.org/downloads/qgis-2017.gpg.key | gpg --import
gpg --fingerprint CAEB3DC3BDF7FB45
gpg --export --armor CAEB3DC3BDF7FB45 | sudo apt-key add -
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -

## ppas
sudo apt update -y

## apps
sudo apt install -y\
 adapta-gtk-theme\
 adapta-backgrounds\
 default-jre\
 etcher-electron\
 gnome-tweak-tool\
 gnome-shell-extensions\
 gparted\
 grass\
 gimp\
 inkscape\
 libcairo2-dev\
 libgdal-dev\
 libjpeg-dev\
 libgmp3-dev\
 libreoffice\
 libproj-dev\
 libssl-dev\
 libudunits2-dev\
 openjdk-11-jre-headless\
 papirus-icon-theme\
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
 spyder3

## deb
# wps
#wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb
#sudo dpkg -i wps-office_10.1.0.6757_amd64.deb
#rm wps-office_10.1.0.6757_amd64.deb

# freeoffice
#wget https://www.softmaker.net/down/softmaker-freeoffice-2018_942-01_amd64.deb
#sudo gdebi softmaker-freeoffice-2018_942-01_amd64.deb
#rm softmaker-freeoffice-2018_942-01_amd64.deb

# teamviwer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
rm teamviewer_amd64.deb

# megasync
wget https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb -O megasync.deb
sudo dpkg -i megasync.deb
rm megasync.deb

# rstudio
wget http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_amd64.deb
sudo dpkg -i libgstreamer0.10-0_0.10.36-1.5_amd64.deb
sudo apt-mark hold libgstreamer-plugins-base0.10-0
rm libgstreamer0.10-0_0.10.36-1.5_amd64.deb

wget http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
sudo dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
sudo apt-mark hold libgstreamer0.10
rm libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb

wget https://s3.amazonaws.com/rstudio-dailybuilds/rstudio-1.1.463-amd64.deb
sudo gdebi rstudio-1.1.463-amd64.deb
rm rstudio-1.1.463-amd64.deb

# stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.9/stacer_1.0.9_amd64.deb -O stacer.deb
sudo dpkg -i stacer.deb
rm stacer.deb

## fix broken
sudo apt clean && sudo apt update
sudo dpkg --configure -a
sudo apt install -f
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt autoremove -y
sudo apt autoclean -y
