#!/bin/bash

## upgrade 
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

## repository
sudo add-apt-repository -y "deb https://qgis.org/ubuntu-nightly $(lsb_release -cs) main"

## public keys
wget -O - https://qgis.org/downloads/qgis-2017.gpg.key | gpg --import
gpg --fingerprint CAEB3DC3BDF7FB45
gpg --export --armor CAEB3DC3BDF7FB45 | sudo apt-key add -

## ppas
sudo apt update -y

## apps
sudo apt install -y\
 default-jre\
 etcher-electron\
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
 python-qgis\
 qbittorrent\
 qgis\
 qgis-plugin-grass\
 r-base\
 r-base-dev\
 r-cran-curl\
 r-cran-openssl\
 r-cran-rjava\
 r-cran-xml2\
 saga\
 skype\
 speedtest-cli\
 spyder3\
 stacer\
 teamviwer\
 wps-office
 
## deb
# rstudio
wget https://download1.rstudio.org/rstudio-1.1.463-amd64.deb
sudo dpkg -i rstudio-1.1.463-amd64.deb
rm rstudio-1.1.463-amd64.deb

## fix broken
sudo apt-get clean
sudo apt-get -y update
sudo apt-get install -f
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt autoremove -y
sudo apt autoclean -y
