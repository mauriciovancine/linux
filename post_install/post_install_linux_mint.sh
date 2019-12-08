#!/bin/bash

# remove lock apt
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# upgrade 
sudo apt update && sudo apt upgrade -y

## apts --------------------------------------------------------------------------------------
# nvidia
sudo apt-add-repository ppa:graphics-drivers/ppa && sudo apt update
sudo ubuntu-drivers autoinstall

# gparted
sudo apt install -y gparted

# gedit
sudo apt install -y gedit

# screenfetch
sudo apt install -y screenfetch

# steam
sudo apt install -y steam-installer

# speedtest
sudo apt install -y speedtest-cli

# java
sudo apt install -y\
 default-jre \
 default-jdk
sudo R CMD javareconf

# git
sudo add-apt-repository ppa:git-core/ppa && sudo apt update
sudo apt install -y git
    
# gdal
sudo apt install -y gdal-bin

# gedit
sudo apt install gedit

# qgis
sudo gedit /etc/apt/sources.list

deb         https://qgis.org/ubuntu bionic main
deb-src     https://qgis.org/ubuntu bionic main

wget -O - https://qgis.org/downloads/qgis-2019.gpg.key | gpg --import
gpg --fingerprint 51F523511C7028C3
gpg --export --armor 51F523511C7028C3 | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3

sudo apt update

sudo apt install -y qgis qgis-plugin-grass

# grass
sudo apt install -y grass

# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
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
sudo apt install -y libgsl-dev # gsl

# python
sudo apt install -y\
  python-numpy\
  python-scipy\
  python-matplotlib\
  python-pandas\
  python-sympy\
  python-nose\
  ipyth\
  python3-matplotlib\
  python3-scipy

# spyder
sudo apt install -y spyder3

# trello
wget https://github.com/danielchatfield/trello-desktop/releases/download/v0.1.9/Trello-linux-0.1.9.zip -O trello.zip
sudo mkdir /opt/trello
sudo unzip trello.zip -d /opt/trello/
sudo ln -sf /opt/trello/Trello /usr/bin/trello
echo -e '[Desktop Entry]\n Version=1.0\n Name=trello\n Exec=/opt/trello/Trello\n Icon=/opt/trello/resources/app/static/Icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/trello.desktop
sudo chmod +x /usr/share/applications/trello.desktop
cp /usr/share/applications/trello.desktop ~/Desktop

# stacer
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt update
sudo apt install stacer

# fonts
sudo apt install -y ubuntu-restricted-extras ttf-mscorefonts-installer

# icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt update
sudo apt install -y papirus-icon-theme libreoffice-style-papirus

## snaps --------------------------------------------------------------------------------------
# snap
sudo apt install -y snap snapd 

# chromium
sudo snap install chromium

# inkscape
sudo snap install inkscape

# spotify
sudo snap install spotify

# skype
sudo snap install skype --classic

# gitkraken
sudo snap install gitkraken

# typora
sudo snap install typora-alanzanattadev

# whatsapp desktop
sudo snap install whatsdesk

# slack
sudo snap install slack --classic

# evernote
sudo snap install evernote-web-client
# https://www.diolinux.com.br/2016/03/como-usar-o-evernote-no-linux.html

## dpkgs --------------------------------------------------------------------------------------
# google chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# libreoffice
wget https://download.documentfoundation.org/libreoffice/stable/6.3.3/deb/x86_64/LibreOffice_6.3.3_Linux_x86-64_deb.tar.gz
tar -xvzf LibreOffice_6.3.3_Linux_x86-64_deb.tar.gz
cd ~/LibreOffice_6.3.3.2_Linux_x86-64_deb/DEBS
sudo dpkg -i *.deb 
cd ..; cd ..
rm -r LibreOffice_6.3.3.2_Linux_x86-64_deb
rm LibreOffice_6.3.3_Linux_x86-64_deb.tar.gz

wget https://download.documentfoundation.org/libreoffice/stable/6.3.3/deb/x86_64/LibreOffice_6.3.3_Linux_x86-64_deb_langpack_pt.tar.gz
tar -xvzf LibreOffice_6.3.3_Linux_x86-64_deb_langpack_pt.tar.gz
cd ~/LibreOffice_6.3.3.2_Linux_x86-64_deb_langpack_pt/DEBS
sudo dpkg -i *.deb 
cd ..; cd ..
rm -r LibreOffice_6.3.3.2_Linux_x86-64_deb_langpack_pt
rm LibreOffice_6.3.3_Linux_x86-64_deb_langpack_pt.tar.gz

# rstudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5019-amd64.deb
sudo dpkg -i rstudio-1.2.5019-amd64.deb
sudo apt install -fy
rm rstudio-1.2.5019-amd64.deb

# google earth
wget http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo dpkg -i google-earth-pro-stable_current_amd64.deb
sudo apt install -fy
rm google-earth-pro-stable_current_amd64.deb

# mendeley
wget -c https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
sudo apt install -fy
rm mendeleydesktop-latest

# simplenote
wget -c https://github.com/Automattic/simplenote-electron/releases/download/v1.12.0/Simplenote-linux-1.12.0-amd64.deb
sudo dpkg -i Simplenote-linux-1.12.0-amd64.deb
rm Simplenote-linux-1.12.0-amd64.deb

# anydesk
wget -c https://download.anydesk.com/linux/anydesk_5.5.1-1_amd64.deb
sudo dpkg -i anydesk_5.5.1-1_amd64.deb
rm anydesk_5.5.1-1_amd64.deb

## fix broken
sudo apt clean && sudo apt update
sudo dpkg --configure -a
sudo apt install -f
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt update
sudo apt autoclean
sudo apt autoremove -y

# end ----------------------------------------------------------------------
