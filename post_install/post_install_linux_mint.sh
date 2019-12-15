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

# fonts
sudo apt install -y ubuntu-restricted-extras ttf-mscorefonts-installer

# icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt update
sudo apt install -y papirus-icon-theme libreoffice-style-papirus

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

# ghostwriter
sudo add-apt-repository ppa:wereturtle/ppa && sudo apt-get update
sudo apt install -y ghostwriter

# python
sudo apt install -y\
  python3-pip\
  python3-numpy\
  python3-scipy\
  python3-matplotlib\
  python3-pandas

# java
sudo apt install -y\
 default-jre \
 default-jdk
sudo R CMD javareconf

# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
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
  
# qgis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
sudo add-apt-repository "deb https://qgis.org/ubuntu bionic main"
sudo apt update
sudo apt install -y qgis qgis-plugin-grass saga

# grass
sudo apt install -y grass

## snaps --------------------------------------------------------------------------------------
# snap
sudo apt install -y snap snapd 

# whatsapp desktop
sudo snap install whatsdesk

# slack
sudo snap install slack --classic

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
flatpak install flathub com.elsevier.MendeleyDesktop

# games
flatpak install -y flathub org.gnome.Games

## dpkgs --------------------------------------------------------------------------------------
# google chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# rclone
wget -c https://downloads.rclone.org/rclone-current-linux-amd64.deb
sudo dpkg -i rclone-current-linux-amd64.deb
rm rclone-current-linux-amd64.deb

# rstudio
wget -c https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5019-amd64.deb
sudo dpkg -i rstudio-1.2.5019-amd64.deb
sudo apt install -fy
rm rstudio-1.2.5019-amd64.deb

# google earth
wget -c http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo dpkg -i google-earth-pro-stable_current_amd64.deb
rm google-earth-pro-stable_current_amd64.deb

# simplenote
wget -c https://github.com/Automattic/simplenote-electron/releases/download/v1.12.0/Simplenote-linux-1.12.0-amd64.deb
sudo dpkg -i Simplenote-linux-1.12.0-amd64.deb
rm Simplenote-linux-1.12.0-amd64.deb

# anydesk
wget -c https://download.anydesk.com/linux/anydesk_5.5.1-1_amd64.deb
sudo dpkg -i anydesk_5.5.1-1_amd64.deb
rm anydesk_5.5.1-1_amd64.deb

# libreoffice
sudo apt remove -y libreoffice*

wget -c https://download.documentfoundation.org/libreoffice/stable/6.3.3/deb/x86_64/LibreOffice_6.3.3_Linux_x86-64_deb.tar.gz
tar xvzf LibreOffice_6.3.3_Linux_x86-64_deb.tar.gz
cd ~/LibreOffice_6.3.3.2_Linux_x86-64_deb/DEBS
sudo dpkg -i *.deb 
cd ..; cd ..
rm -r LibreOffice_6.3.3.2_Linux_x86-64_deb
rm LibreOffice_6.3.3_Linux_x86-64_deb.tar.gz

wget -c https://download.documentfoundation.org/libreoffice/stable/6.3.3/deb/x86_64/LibreOffice_6.3.3_Linux_x86-64_deb_langpack_pt.tar.gz
tar xvzf LibreOffice_6.3.3_Linux_x86-64_deb_langpack_pt.tar.gz
cd ~/LibreOffice_6.3.3.2_Linux_x86-64_deb_langpack_pt/DEBS
sudo dpkg -i *.deb 
cd ..; cd ..
rm -r LibreOffice_6.3.3.2_Linux_x86-64_deb_langpack_pt
rm LibreOffice_6.3.3_Linux_x86-64_deb_langpack_pt.tar.gz

## fix broken
sudo apt install -f

## finishing, updating and cleaning
sudo apt update && sudo apt dist-upgrade -y
flatpak update -y
sudo apt autoclean
sudo apt autoremove -y

# others ------------------------------------------------------------------
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

wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository "deb https://typora.io/linux ./"
sudo apt update
sudo apt install -y typora

# end ----------------------------------------------------------------------
