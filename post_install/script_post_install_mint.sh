#!/bin/bash

## upgrade 
sudo apt update -y
sudo apt upgrade -y

## repositories
sudo add-apt-repository ppa:marutter/c2d4u3.5
sudo add-apt-repository ppa:ubuntugis/ppa
sudo add-apt-repository ppa:slimbook/slimbook

## repositories to edit sourcelist
sudo apt install gedit
# sudo gedit /etc/apt/sources.list
deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/
deb https://typora.io/linux ./

## public keys
# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -

# rstudio
gpg --keyserver keys.gnupg.net --recv-keys 3F32EE77E331692F

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

## update ppas
sudo apt update -y

## apps
sudo apt install -y\
 chromium-browser\
 default-jre\
 flatpak\
 gdal-bin\
 git-all\
 gparted\
 grass\
 '*icon-theme*'\
 inkscape\
 libcairo2-dev\
 libgdal-dev\
 libjpeg-dev\
 libgmp3-dev\
 libproj-dev\
 libssl-dev\
 libudunits2-dev\
 openjdk-11-jre-headless\
 qgis\
 qgis-plugin-grass\
 r-base\
 r-base-dev\
 r-cran-curl\
 r-cran-openssl\
 r-cran-rjava\
 r-cran-xml2\
 saga\
 screenfetch\
 snapd\
 spotify-client\
 sublime-text\
 speedtest-cli\
 spyder3\
 steam-installer\
 texlive-full\
 typora
 
# whatsapp desktop
sudo snap install whatsdesk
 
# opendrive
sudo snap install --edge odrive
 
# simplenote
wget https://github.com/Automattic/simplenote-electron/releases/download/v1.5.0/Simplenote-linux-1.5.0-amd64.deb
sudo dpkg -i Simplenote-linux-1.5.0-amd64.deb
rm Simplenote-linux-1.5.0-amd64.deb

# wps
wget http://kdl.cc.ksosoft.com/wps-community/download/8392/wps-office_11.1.0.8392_amd64.deb
sudo dpkg -i wps-office_11.1.0.8392_amd64.deb
rm wps-office_11.1.0.8392_amd64.deb

wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i wps-office-fonts_1.0_all.deb
rm wps-office-fonts_1.0_all.deb

sudo apt install ttf-mscorefonts-installer

# libreoffice
wget https://download.documentfoundation.org/libreoffice/stable/6.2.4/deb/x86_64/LibreOffice_6.2.4_Linux_x86-64_deb.tar.gz
tar -xvzf LibreOffice_6.2.4_Linux_x86-64_deb.tar.gz
cd ~/LibreOffice_6.2.4.2_Linux_x86-64_deb/DEBS
sudo dpkg -i *.deb 
cd ..; cd ..
rm -r LibreOffice_6.2.4.2_Linux_x86-64_deb
rm LibreOffice_6.2.4_Linux_x86-64_deb.tar.gz

# mendeley
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
rm mendeleydesktop-latest

# teamviwer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
rm teamviewer_amd64.deb

# rstudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo apt install dpkg-sig
dpkg-sig --verify rstudio-1.2.1335-amd64.deb
sudo dpkg -i rstudio-1.2.1335-amd64.deb
rm rstudio-1.2.1335-amd64.deb

# gitkkraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

# stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/stacer_1.1.0_amd64.deb
sudo dpkg -i stacer_1.1.0_amd64.deb
rm stacer_1.1.0_amd64.deb

## fix broken
sudo apt clean && sudo apt update
sudo dpkg --configure -a
sudo apt install -f
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt autoremove -y
sudo apt autoclean -y
