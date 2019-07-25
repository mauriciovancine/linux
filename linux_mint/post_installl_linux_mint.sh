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
sudo apt install -y\
 default-jre \
 default-jdk
sudo R CMD javareconf

# git
sudo apt install -y git-all

# gdal
sudo apt install -y gdal-bin

# grass
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt update
sudo apt install -y grass

# qgis
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt update
sudo apt install -y\
  qgis\
  qgis-plugin-grass

# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
sudo apt update
sudo apt install -y\
 r-base-core\
 r-base-dev\
 libssl-dev\
 libudunits2-dev
 
# python
sudo apt install -y\
  python-numpy\
  python-scipy\
  python-matplotlib\
  python-pandas\
  python-sympy\
  python-nose\
  ipython

# fonts
sudo apt install -y ubuntu-restricted-extras

# icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt update
sudo apt install -y papirus-icon-theme

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

# gitkraken
sudo snap install gitkraken

# typora
sudo snap install typora-alanzanattadev

# sublime
sudo snap install sublime-text --classic

# whatsapp desktop
sudo snap install whatsdesk

## dpkgs --------------------------------------------------------------------------------------
wget http://kdl.cc.ksosoft.com/wps-community/download/8722/wps-office_11.1.0.8722_amd64.deb
sudo dpkg -i wps-office_11.1.0.8722_amd64.deb
rm wps-office_11.1.0.8722_amd64.deb

wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i wps-office-fonts_1.0_all.deb
rm wps-office-fonts_1.0_all.deb

sudo apt install ttf-mscorefonts-installer -y

# rstudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo dpkg -i rstudio-1.2.1335-amd64.deb
sudo apt install -fy
rm rstudio-1.2.1335-amd64.deb

# mendeley
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
rm mendeleydesktop-latest

# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
sudo apt install -fy
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