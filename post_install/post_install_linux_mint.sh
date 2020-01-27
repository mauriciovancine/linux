#!/bin/bash

# remove lock apt
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# upgrade 
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

## apts --------------------------------------------------------------------------------------
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

# 32 bits
sudo dpkg --add-architecture i386

# steam
sudo apt install -y steam-installer steam-devices steam:i386

# fonts
sudo apt install -y ubuntu-restricted-extras ttf-mscorefonts-installer

# paper icons
sudo add-apt-repository ppa:snwh/ppa && sudo apt update
sudo apt install paper-icon-theme

# nvidia
sudo apt-add-repository ppa:graphics-drivers/ppa && sudo apt update
sudo ubuntu-drivers autoinstall

# stacer
sudo add-apt-repository ppa:oguzhaninan/stacer && sudo apt update
sudo apt install -y stacer

# rclone browser
sudo add-apt-repository ppa:mmozeiko/rclone-browser && sudo apt update
sudo apt install -y rclone-browser

# git
sudo add-apt-repository ppa:git-core/ppa && sudo apt update
sudo apt install -y git

# typora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
echo -e "\ndeb https://typora.io/linux ./" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install -y typora

# java
sudo apt install -y\
 default-jre \
 default-jdk
sudo R CMD javareconf

# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
echo -e "\ndeb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install -y r-base-core # r
sudo apt install -y r-base-dev # devtools
sudo apt install -y libxml2-dev # devtools
sudo apt install -y libssl-dev # devtools
sudo apt install -y libcurl4-openssl-dev # devtools
sudo apt install -y libgdal-dev # gdal
sudo apt install -y libproj-dev # gdal
sudo apt install -y libudunits2-dev # units
sudo apt install -y libcairo2-dev # mapview
sudo apt install -y libgmp3-dev # betapart
sudo apt install -y libgtk2.0-dev # cairo
sudo apt install -y xvfb # cairo 
sudo apt install -y xauth # cairo 
sudo apt install -y xfonts-base # cairo 
sudo apt install -y libxt-dev # cairo
sudo apt install -y libgsl-dev # gsl
sudo apt install -y libmagick++-dev # magick
  
# qgis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
echo -e "\ndeb https://qgis.org/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install -y qgis qgis-plugin-grass saga

# grass
sudo apt install -y grass

## snaps --------------------------------------------------------------------------------------
# snap
sudo apt install -y snap snapd 

# whatsapp desktop
sudo snap install whatsdesk

# spotify
sudo snap install spotify

## flatpaks -----------------------------------------------------------------------------------
# flatpak
sudo add-apt-repository ppa:alexlarsson/flatpak && sudo apt update
sudo apt install -y flatpak

# sublime
flatpak install -y flathub com.sublimetext.three

# skype
flatpak install -y flathub com.skype.Client

# gimp
flatpak install -y flathub org.gimp.GIMP

# telegram
flatpak install -y flathub org.telegram.desktop

# nvidia
flatpak install -y flathub com.leinardi.gwe

# mendeley
flatpak install -y flathub com.elsevier.MendeleyDesktop

# wps
flatpak install -y flathub com.wps.Office

# games
flatpak install -y flathub org.gnome.Games

## dpkgs --------------------------------------------------------------------------------------
# google chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -fy
rm google-chrome-stable_current_amd64.deb

# rclone
wget -c https://downloads.rclone.org/rclone-current-linux-amd64.deb
sudo dpkg -i rclone-current-linux-amd64.deb
sudo apt install -fy
rm rclone-current-linux-amd64.deb

# rstudio
wget -c https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5019-amd64.deb
sudo dpkg -i rstudio-1.2.5019-amd64.deb
sudo apt install -fy
rm rstudio-1.2.5019-amd64.deb

# slack
wget -c https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
sudo dpkg -i slack-desktop-4.2.0-amd64.deb
sudo apt install -fy
rm slack-desktop-4.2.0-amd64.deb

# google earth
wget -c http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo dpkg -i google-earth-pro-stable_current_amd64.deb
sudo apt install -fy
rm google-earth-pro-stable_current_amd64.deb

# simplenote
wget -c https://github.com/Automattic/simplenote-electron/releases/download/v1.12.0/Simplenote-linux-1.12.0-amd64.deb
sudo dpkg -i Simplenote-linux-1.12.0-amd64.deb
sudo apt install -fy
rm Simplenote-linux-1.12.0-amd64.deb

# anydesk
wget -c https://download.anydesk.com/linux/anydesk_5.5.1-1_amd64.deb
sudo dpkg -i anydesk_5.5.1-1_amd64.deb
sudo apt install -fy
rm anydesk_5.5.1-1_amd64.deb

# libreoffice
sudo apt remove -y libreoffice*

wget -c https://download.documentfoundation.org/libreoffice/stable/6.3.4/deb/x86_64/LibreOffice_6.3.4_Linux_x86-64_deb.tar.gz
tar xvzf LibreOffice_6.3.4_Linux_x86-64_deb.tar.gz
cd ~/LibreOffice_6.3.4.2_Linux_x86-64_deb/DEBS
sudo dpkg -i *.deb
sudo apt install -fy
cd ..; cd ..
rm -r LibreOffice_6.3.4.2_Linux_x86-64_deb
rm LibreOffice_6.3.4_Linux_x86-64_deb.tar.gz

wget -c https://download.documentfoundation.org/libreoffice/stable/6.3.4/deb/x86_64/LibreOffice_6.3.4_Linux_x86-64_deb_langpack_pt.tar.gz
tar xvzf LibreOffice_6.3.4_Linux_x86-64_deb_langpack_pt.tar.gz
cd ~/LibreOffice_6.3.4.2_Linux_x86-64_deb_langpack_pt/DEBS
sudo dpkg -i *.deb 
sudo apt install -fy
cd ..; cd ..
rm -r LibreOffice_6.3.4.2_Linux_x86-64_deb_langpack_pt
rm LibreOffice_6.3.4_Linux_x86-64_deb_langpack_pt.tar.gz

# warsal - modulo seguranca bb
wget -c https://cloud.gastecnologia.com.br/bb/downloads/ws/warsaw_setup64.deb
sudo dpkg -i warsaw_setup64.deb
sudo apt install -fy
rm warsaw_setup64.deb

# geoda
wget -c https://s3-us-west-2.amazonaws.com/geodasoftware/geoda_1.14-1bionic1_amd64.deb
sudo dpkg -i geoda_1.14-1bionic1_amd64.deb
sudo apt install -fy
rm geoda_1.14-1bionic1_amd64.deb

## fix broken
sudo apt install -f

## finishing, updating and cleaning
sudo apt update && sudo apt dist-upgrade -y
flatpak update -y
sudo apt autoclean
sudo apt autoremove -y

# others ------------------------------------------------------------------
# freemind 
sudo snap install freemind

# mega
wget -c https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb
sudo dpkg -i megasync-xUbuntu_18.04_amd64.deb
sudo apt install -fy
rm megasync-xUbuntu_18.04_amd64.deb

# papirus icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt update
sudo apt install -y papirus-icon-theme libreoffice-style-papirus

# evernote
sudo snap install evernote-web-client
# https://www.diolinux.com.br/2016/03/como-usar-o-evernote-no-linux.html

# trello
wget -c https://github.com/danielchatfield/trello-desktop/releases/download/v0.1.9/Trello-linux-0.1.9.zip -O trello.zip
sudo mkdir /opt/trello
sudo unzip trello.zip -d /opt/trello/
sudo ln -sf /opt/trello/Trello /usr/bin/trello
echo -e '[Desktop Entry]\n Version=1.0\n Name=trello\n Exec=/opt/trello/Trello\n Icon=/opt/trello/resources/app/static/Icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/trello.desktop
sudo chmod +x /usr/share/applications/trello.desktop
cp /usr/share/applications/trello.desktop ~/Desktop

# python
sudo apt install -y\
  python3-pip\
  python3-numpy\
  python3-scipy\
  python3-matplotlib\
  python3-pandas

# end ----------------------------------------------------------------------
