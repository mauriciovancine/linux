#!/bin/bash

# ubuntu 20.04 (focal)

# upgrade 
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

# nvidia
sudo apt-add-repository ppa:graphics-drivers/ppa && 
sudo apt update &&
sudo ubuntu-drivers autoinstall

# git
sudo add-apt-repository ppa:git-core/ppa && 
sudo apt update &&
sudo apt install -y git

# make
sudo apt install -y make

# node-typescript
sudo apt install -y node-typescript

# tweeks and extensions
sudo apt install -y gnome-tweaks &&
sudo apt install -y gnome-shell-extensions &&
sudo apt install -y chrome-gnome-shell &&
sudo apt install -y gnome-shell-extension-weather &&
sudo apt install -y x11-utils &&
sudo apt install -y gir1.2-gtop-2.0 lm-sensors gnome-shell-extension-prefs &&
mkdir -p ~/.local/share/gnome-shell/extensions &&
git clone https://github.com/corecoding/Vitals.git ~/.local/share/gnome-shell/extensions/Vitals@CoreCoding.com
# https://extensions.gnome.org/extension/1319/gsconnect/
# after: press Alt + F2 and enter r in the box

# themes
sudo apt install materia-gtk-theme
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf &&
git clone https://github.com/vinceliuice/Matcha-gtk-theme.git &&
cd Matcha-gtk-theme &&
./install.sh

# icons
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt install paper-icon-theme

wget -c https://launchpadlibrarian.net/468844787/paper-icon-theme_1.5.728-202003121505~daily~ubuntu18.04.1_all.deb &&
sudo dpkg -i paper*.deb &&
sudo apt install -f &&
rm paper-icon-theme_1.5.728-202003121505~daily~ubuntu18.04.1_all.deb

# wallpapers
sudo apt-get install -y ubuntu-wallpapers*

# gparted
sudo apt install -y gparted

# screenfetch
sudo apt install -y screenfetch

# speedtest
sudo apt install -y speedtest-cli

# htop
sudo apt install -y htop

# inkscape
sudo apt install -y inkscape

# audacity
sudo apt install -y audacity

# flameshot
sudo apt install -y flameshot

# epub reader
sudo apt install -y fbreader
sudo apt install -y okular

# rclone
sudo apt install -y rclone

# unrar
sudo apt install -y unrar

# adobe
sudo apt install -y flashplugin-installer

# darktable
sudo apt install -y darktable

# fonts
sudo apt install -y ubuntu-restricted-extras ttf-mscorefonts-installer

# alacritty
sudo add-apt-repository ppa:mmstick76/alacritty &&
sudo apt install -y alacritty

# obs studio
sudo apt-get install -y ffmpeg &&
sudo add-apt-repository ppa:obsproject/obs-studio &&
sudo apt-get update && 
sudo apt-get install -y obs-studio

# peek
sudo add-apt-repository ppa:peek-developers/stable &&
sudo apt update &&
sudo apt install -y peek

# typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update
sudo apt install typora

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE &&
echo -e "\ndeb https://typora.io/linux ./" | sudo tee -a /etc/apt/sources.list &&
sudo apt update &&
sudo apt install -y typora

# anydesk
sudo su -
wget -c -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add - &&
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list &&
apt update &&
apt install anydesk -y &&
exit

# sublime
wget -c -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
sudo apt update &&
sudo apt install -y sublime-text

# java
sudo apt install -y default-jre default-jdk

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
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 6B827C12C2D425E227EDCA75089EBE08314DF160 &&
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable &&
sudo apt update &&
sudo apt install -y qgis qgis-plugin-grass saga

# grass
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 6B827C12C2D425E227EDCA75089EBE08314DF160 &&
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable &&
sudo apt update &&
sudo apt install -y grass

## flatpak ------------------------------------------------------------------------------------
# flatpak
sudo apt install -y flatpak &&
sudo apt install -y gnome-software-plugin-flatpak &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# libreoffice
sudo apt-get remove --purge libreoffice* &&
flatpak install -y flathub org.libreoffice.LibreOffice

# spotify
flatpak install -y flathub com.spotify.Client

# slack
flatpak install -y flathub com.slack.Slack

# gimp
flatpak install -y flathub org.gimp.GIMP

# photogimp
wget -c https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip &&
unzip PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip

# telegram
flatpak install -y flathub org.telegram.desktop

# discord
flatpak install -y flathub com.discordapp.Discord

# skype
flatpak install -y flathub com.skype.Client

# fondo
flatpak install flathub com.github.calo001.fondo

# bookworm
flatpak install -y flathub com.github.babluboy.bookworm

# toggl
flatpak install flathub com.toggl.TogglDesktop

# vlc
flatpak install flathub org.videolan.VLC

## snaps --------------------------------------------------------------------------------------
# install
sudo apt install -y snapd

# whatsdesk
sudo snap install whatsdesk

# simplenote
sudo snap install simplenote

# kcolorchooser
sudo snap install kcolorchooser

## dpkgs --------------------------------------------------------------------------------------
# rstudio
wget -c https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.1093-amd64.deb &&
sudo dpkg -i rstudio-1.3.1093-amd64.deb
sudo apt install -fy && 
rm rstudio-1.3.1093-amd64.deb

# libreoffice
wget https://download.documentfoundation.org/libreoffice/stable/6.4.6/deb/x86_64/LibreOffice_6.4.6_Linux_x86-64_deb.tar.gz
tar -xvf LibreOffice_6.4.6_Linux_x86-64_deb.tar.gz
cd ~/LibreOffice_6.4.6.2_Linux_x86-64_deb/DEBS
sudo dpkg -i *.deb 
cd ..; cd ..
rm -r LibreOffice_6.4.6.2_Linux_x86-64_deb
rm LibreOffice_6.4.6_Linux_x86-64_deb.tar.gz

# pdfsam
wget -c https://github.com/torakiki/pdfsam/releases/download/v4.2.0/pdfsam_4.2.0-1_amd64.deb &&
sudo dpkg -i pdfsam_4.2.0-1_amd64.deb &&
sudo apt install -fy &&
rm pdfsam_4.2.0-1_amd64.deb

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

# whatdesk
wget -c https://zerkc.gitlab.io/whatsdesk/whatsdesk_0.3.1_amd64.deb
sudo dpkg -i whatsdesk_0.3.1_amd64.deb
rm whatsdesk_0.3.1_amd64.deb

# mendeley
wget -c https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/mendeleydesktop_1.19.4-stable_amd64.deb
sudo dpkg -i mendeleydesktop_1.19.4-stable_amd64.deb
rm mendeleydesktop_1.19.4-stable_amd64.deb

# megasync
wget -c https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/megasync-xUbuntu_20.04_amd64.deb &&
sudo dpkg -i megasync-xUbuntu_20.04_amd64.deb &&
rm megasync-xUbuntu_20.04_amd64.deb

wget -c https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/nautilus-megasync-xUbuntu_20.04_amd64.deb &&
sudo dpkg -i nautilus-megasync-xUbuntu_20.04_amd64.deb &&
rm nautilus-megasync-xUbuntu_20.04_amd64.deb

# dropbox
wget -c --output-document=dropbox_2020.03.04_amd64.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb
sudo dpkg -i dropbox_2020.03.04_amd64.deb
sudo apt install -fy
rm dropbox_2020.03.04_amd64.deb

# warsal - modulo seguranca bb
wget https://cloud.gastecnologia.com.br/cef/warsaw/install/GBPCEFwr64.deb &&
sudo dpkg -i GBPCEFwr64.deb &&
rm GBPCEFwr64.deb

## fix broken
sudo apt clean && sudo apt update &&
sudo dpkg --configure -a &&
sudo apt install -f &&
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt update &&
sudo apt autoclean -y &&
sudo apt autoremove -y

# extras ------------------------------------------------------------------
# chromium
# sudo apt install -y chromium-browser &&

# tile windows - popos
# git clone https://github.com/pop-os/shell &&
# d shell/ &&
#./rebuild.sh

# dash-to-dock
# git clone https://github.com/micheleg/dash-to-dock.git &&
# cd dash-to-dock &&
# make &&
# make install

# thema
# sudo add-apt-repository ppa:daniruiz/flat-remix &&
# sudo apt update &&
# sudo apt install -y flat-remix-gnome

# end ----------------------------------------------------------------------
