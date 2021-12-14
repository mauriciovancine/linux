#!/bin/bash

# popos 20.04

# upgrade 
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

# tweeks and extensions
sudo apt install -y gnome-tweaks &&
sudo apt install -y gnome-shell-extensions

# speedtest
sudo apt install -y speedtest-cli

# htop
sudo apt install -y htop

# audacity
sudo apt install -y audacity

# epub reader
sudo apt install -y okular

# unrar
sudo apt install -y unrar

# java
sudo apt install -y default-jre default-jdk

# vitals
sudo apt install -y gir1.2-gtop-2.0 lm-sensors

# vpn unesp
sudo apt install -y network-manager-openvpn-gnome

# fonts
sudo add-apt-repository multiverse &&
sudo apt update && 
sudo apt install -y ttf-mscorefonts-installer &&
sudo fc-cache -f -v

# git
sudo add-apt-repository ppa:git-core/ppa && 
sudo apt update &&
sudo apt install -y git

# emacs
sudo apt install -y emacs

# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
sudo apt update &&
sudo apt install -y sublime-text

# insync
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C &&
sudo add-apt-repository "deb http://apt.insync.io/ubuntu focal non-free contrib" &&
sudo apt update &&
sudo apt install -y insync

# typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add - &&
sudo add-apt-repository 'deb https://typora.io/linux ./' &&
sudo apt update &&
sudo apt install -y typora pandoc

# obs studio
sudo apt-get install -y ffmpeg &&
sudo add-apt-repository ppa:obsproject/obs-studio &&
sudo apt-get update && 
sudo apt-get install -y obs-studio

# anydesk
sudo su -
wget -c -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add - &&
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list &&
apt update &&
apt install anydesk -y &&
exit

# brave
sudo apt install -y apt-transport-https curl &&
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg &&
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update &&
sudo apt install -y brave-browser

# r
# https://rtask.thinkr.fr/installation-of-r-4-0-on-ubuntu-20-04-lts-and-tips-for-spatial-packages/
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 &&
gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9 &&
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add - &&
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" &&
sudo apt update &&
sudo apt install -y r-base r-base-core r-recommended r-base-dev # r

sudo apt install -y gdal-bin &&
sudo apt install -y libgdal-dev && 
sudo apt install -y libproj-dev && 
sudo apt install -y libssl-dev && 
sudo apt install -y libavfilter-dev &&
sudo apt install -y xml2 && 
sudo apt install -y libxml2-dev && 
sudo apt install -y libgeos-dev && 
sudo apt install -y libudunits2-dev && 
sudo apt install -y gfortran-7 && 
sudo apt install -y gcc-7 g++-7 && 
sudo apt install -y libxml2-dev && 
sudo apt install -y libssl-dev && 
sudo apt install -y libcurl4-openssl-dev && 
sudo apt install -y libv8-dev && 
sudo apt install -y libprotobuf-dev && 
sudo apt install -y libjq-dev && 
sudo apt install -y protobuf-compiler && 
sudo apt install -y libgmp3-dev && 
sudo apt install -y libgtk2.0-dev && 
sudo apt install -y xvfb && 
sudo apt install -y xauth && 
sudo apt install -y xfonts-base && 
sudo apt install -y libxt-dev && 
sudo apt install -y libgsl-dev && 
sudo apt install -y libmagick++-dev && 
sudo R CMD javareconf

# qgis
sudo apt install -y gnupg software-properties-common &&
wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import &&
sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg &&
sudo apt update &&
sudo apt install -y qgis grass qgis-plugin-grass saga

# youtube-dl
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

## flatpak ------------------------------------------------------------------------------------
# spotify
flatpak install -y flathub com.spotify.Client

# telegram
flatpak install -y flathub org.telegram.desktop

# discord
flatpak install -y flathub com.discordapp.Discord

# zoom
flatpak install -y flathub us.zoom.Zoom

# flameshot
flatpak install -y flathub org.flameshot.Flameshot

# simplenote
flatpak install -y flathub com.simplenote.Simplenote

# gcolor3
flatpak install -y flathub nl.hjdskes.gcolor3

# inkscape
flatpak install -y flathub org.inkscape.Inkscape

# gimp
flatpak install -y flathub org.gimp.GIMP

# vlc
flatpak install -y flathub org.videolan.VLC

# stremio
flatpak install -y flathub com.stremio.Stremio

# zotero
flatpak install -y flathub org.zotero.Zotero

# visual studio
flatpak install -y flathub com.visualstudio.code

# filezilla
flatpak install -y flathub org.filezillaproject.Filezilla

# xournal
flatpak install -y flathub com.github.xournalpp.xournalpp

## snaps --------------------------------------------------------------------------------------
# install
sudo apt install -y snapd

# whatsdesk
sudo snap install whatsdesk

## dpkgs --------------------------------------------------------------------------------------
# google chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb &&
sudo apt install -fy &&
rm google-chrome-stable_current_amd64.deb

# google earth
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13 &&
wget -c http://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb &&
sudo dpkg -i google-earth-pro-stable_current_amd64.deb &&
rm google-earth-pro-stable_current_amd64.deb

# rstudio
wget -c https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.0%2B351-amd64.deb &&
sudo dpkg -i rstudio-2021.09.0+351-amd64.deb &&
sudo apt install -fy && 
rm rstudio-2021.09.0+351-amd64.deb

# jupyterab
wget -c https://github.com/jupyterlab/jupyterlab-desktop/releases/latest/download/JupyterLab-Setup-Debian.deb &&
sudo dpkg -i JupyterLab-Setup-Debian.deb &&
sudo apt install -fy && 
rm JupyterLab-Setup-Debian.deb

# megasync
wget -c https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/megasync-xUbuntu_20.04_amd64.deb &&
sudo dpkg -i megasync-xUbuntu_20.04_amd64.deb &&
sudo apt install -fy &&
rm megasync-xUbuntu_20.04_amd64.deb

# dropbox
wget -c --output-document=dropbox_2020.03.04_amd64.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb
sudo dpkg -i dropbox_2020.03.04_amd64.deb
sudo apt install -fy &&
rm dropbox_2020.03.04_amd64.deb

# warsal - modulo seguranca bb
wget https://cloud.gastecnologia.com.br/cef/warsaw/install/GBPCEFwr64.deb &&
sudo dpkg -i GBPCEFwr64.deb &&
rm GBPCEFwr64.deb

## fix broken
sudo apt clean && 
sudo apt update &&
sudo dpkg --configure -a &&
sudo apt install -f &&
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt update &&
sudo apt autoclean -y &&
sudo apt autoremove -y

# end -------------------------------------------------------------------------------------
