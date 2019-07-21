#!/bin/bash

# upgrade 
sudo apt update && sudo apt upgrade -y

## apts --------------------------------------------------------------------------------------
# nvidia
sudo apt-add-repository ppa:graphics-drivers/ppa && sudo apt update
sudo ubuntu-drivers autoinstall

# chromium
sudo apt install -y chromium-browser

# gparted
sudo apt install -y gparted
 
# inkscape
sudo apt install -y inkscape

# steam
sudo apt install -y steam-installer

# speedtest
sudo apt install -y speedtest-cli

# spyder
sudo apt install -y spyder3

# java
sudo apt install -y default-jre openjdk-11-jre-headless

# git
sudo apt install -y git-all

# gdal
sudo apt install -y gdal-bin

# grass
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt update
sudo apt install -y grass

# qgis
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt update
sudo apt install -y qgis qgis-plugin-grass

# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
sudo apt update
sudo apt install -y r-base-core

# rstudio
sudo apt install libssl-dev libapparmor-dev apparmor-utils
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo dpkg -i rstudio-1.2.1335-amd64.deb
rm rstudio-1.2.1335-amd64.deb

# fonts
sudo apt install -y ubuntu-restricted-extras

# icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt update
sudo apt install papirus-icon-theme

## snaps --------------------------------------------------------------------------------------
# snap
sudo apt install -y snap snapd 

# opendrive
sudo snap install odrive-unofficial

# simplenote
sudo snap install simplenote

# spotify
sudo snap install spotify

# skype
sudo snap install skype --classic

# qgis
sudo snap install qgsrepo

# gitkraken
sudo snap install gitkraken

# typora
sudo snap install typora-alanzanattadev

# sublime
sudo snap install sublime-text --classic

# wps
sudo snap install wps-office
sudo snap install wps-office-multilang
sudo snap install wps-office-all-lang-no-internet

## dpkgs --------------------------------------------------------------------------------------

# mendeley
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
rm mendeleydesktop-latest

# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
rm teamviewer_amd64.deb

# stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/stacer_1.1.0_amd64.deb
sudo dpkg -i stacer_1.1.0_amd64.deb
rm stacer_1.1.0_amd64.deb

# evernote
# https://www.diolinux.com.br/2016/03/como-usar-o-evernote-no-linux.html

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