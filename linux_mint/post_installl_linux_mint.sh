#!/bin/bash

# upgrade 
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

## apts --------------------------------------------------------------------------------------
# nvidia
sudo apt-add-repository ppa:graphics-drivers/ppa && sudo apt update
sudo ubuntu-drivers autoinstall

# chromium
sudo apt install -y chromium-browser

# gparted
sudo apt install -y gparted

# gedit
sudo apt install -y gedit

# screenfetch
sudo apt install -y screenfetch
 
# inkscape
sudo apt install -y inkscape

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

# grass
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt update
sudo apt install -y grass

# qgis
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt update
sudo apt install -y qgis qgis-plugin-grass
  
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

# fonts
sudo apt install -y ubuntu-restricted-extras

# icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt update
sudo apt install -y papirus-icon-theme

## snaps --------------------------------------------------------------------------------------
# snap
sudo apt install -y snap snapd 

# libreoffice
sudo apt remove libreoffice* -y
sudo snap install libreoffice

# googletools
sudo snap install googletools-desktop

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

# whatsapp desktop
sudo snap install whatsdesk

# slack
sudo snap install slack --classic

## dpkgs --------------------------------------------------------------------------------------
# wps
wget http://kdl.cc.ksosoft.com/wps-community/download/8722/wps-office_11.1.0.8722_amd64.deb
sudo dpkg -i wps-office_11.1.0.8722_amd64.deb
sudo apt install -fy
rm wps-office_11.1.0.8722_amd64.deb

wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i wps-office-fonts_1.0_all.deb
sudo apt install -fy
rm wps-office-fonts_1.0_all.deb

# rstudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo dpkg -i rstudio-1.2.1335-amd64.deb
sudo apt install -fy
rm rstudio-1.2.1335-amd64.deb

# google earth
wget http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo dpkg -i google-earth-pro-stable_current_amd64.deb
sudo apt install -fy
rm google-earth-pro-stable_current_amd64.deb

# mendeley
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
sudo apt install -fy
rm mendeleydesktop-latest

# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
sudo apt install -fy
rm teamviewer_amd64.deb

# stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/stacer_1.1.0_amd64.deb
sudo dpkg -i stacer_1.1.0_amd64.deb
sudo apt install -fy
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