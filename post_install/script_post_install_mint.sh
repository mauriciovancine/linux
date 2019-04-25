#!/bin/bash

## upgrade 
sudo apt update -y
sudo apt upgrade -y

## repositories
sudo add-apt-repository ppa:papirus/papirus
sudo apt-add-repository ppa:tista/adapta
sudo add-apt-repository ppa:marutter/c2d4u3.5

## repositories to edit sourcelist
sudo apt install gedit
# sudo gedit /etc/apt/sources.list
deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/
deb https://qgis.org/ubuntu bionic main
deb https://typora.io/linux ./

## public keys
# r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -

# rstudio
gpg --keyserver keys.gnupg.net --recv-keys 3F32EE77E331692F

# qgis
wget -O - https://qgis.org/downloads/qgis-2017.gpg.key | gpg --import
gpg --fingerprint CAEB3DC3BDF7FB45
gpg --export --armor CAEB3DC3BDF7FB45 | sudo apt-key add -

# typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

## update ppas
sudo apt update -y

## apps
sudo apt install -y\
 brasero\
 default-jre\
 git-all\
 gparted\
 grass\
 gimp\
 inkscape\
 libcairo2-dev\
 libgdal-dev\
 libjpeg-dev\
 libgmp3-dev\
 libproj-dev\
 libssl-dev\
 libudunits2-dev\
 mpv\
 openjdk-11-jre-headless\
 papirus-icon-theme\
 qgis\
 qgis-plugin-grass\
 r-base\
 r-base-core\
 r-base-dev\
 r-cran-curl\
 r-cran-openssl\
 r-cran-rjava\
 r-cran-xml2\
 saga\
 stacer\
 sublime-text\
 speedtest-cli\
 spyder3\
 texlive-full\
 typora
 
# simplenote
wget https://github.com/Automattic/simplenote-electron/releases/download/v1.5.0/Simplenote-linux-1.5.0-amd64.deb
sudo dpkg -i Simplenote-linux-1.5.0-amd64.deb
rm Simplenote-linux-1.5.0-amd64.deb

# tusk
wget https://github.com/klaussinani/tusk/releases/download/v0.22.0/tusk_0.22.0_amd64.deb
sudo dpkg -i tusk_0.22.0_amd64.deb
rm tusk_0.22.0_amd64.deb

# wps
wget http://kdl.cc.ksosoft.com/wps-community/download/8392/wps-office_11.1.0.8392_amd64.deb
sudo dpkg -i wps-office_11.1.0.8392_amd64.deb
rm wps-office_11.1.0.8392_amd64.deb

wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i wps-office-fonts_1.0_all.deb
rm wps-office-fonts_1.0_all.deb

sudo apt install ttf-mscorefonts-installer

# libreoffice
wget https://download.documentfoundation.org/libreoffice/stable/6.2.2/deb/x86_64/LibreOffice_6.2.2_Linux_x86-64_deb.tar.gz
tar -fvx LibreOffice_6.2.3_Linux_x86-64_deb.tar.gz
cd ~/LibreOffice_6.2.3.2_Linux_x86-64_deb/DEBS
sudo dpkg -i *.deb 
cd ..; cd ..
rm -r LibreOffice_6.2.3.2_Linux_x86-64_deb
rm LibreOffice_6.2.3_Linux_x86-64_deb.tar.gz

# mendeley
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
rm mendeleydesktop-latest

# anydesk
wget https://download.anydesk.com/linux/anydesk_4.0.1-1_amd64.deb
sudo dpkg -i anydesk_4.0.1-1_amd64.deb
rm anydesk_4.0.1-1_amd64.deb

# teamviwer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
rm teamviewer_amd64.deb

# overgrive
wget https://www.thefanclub.co.za/sites/all/modules/pubdlcnt/pubdlcnt.php?file=https://www.thefanclub.co.za/sites/default/files/public/overgrive/overgrive_3.2.3_all.deb&nid=168
sudo dpkg -i overgrive_3.2.3_all.deb
rm overgrive_3.2.3_all.deb

# megasync
# wget https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb -O megasync.deb
# sudo dpkg -i megasync.deb
# rm megasync.deb

# rstudio
# wget http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_amd64.deb
# sudo dpkg -i libgstreamer0.10-0_0.10.36-1.5_amd64.deb
# sudo apt-mark hold libgstreamer-plugins-base0.10-0
# rm libgstreamer0.10-0_0.10.36-1.5_amd64.deb

# wget http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
# sudo dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
# sudo apt-mark hold libgstreamer0.10
# rm libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo apt install dpkg-sig
dpkg-sig --verify rstudio-1.2.1335-amd64.deb
sudo dpkg -i rstudio-1.2.1335-amd64.deb
rm rstudio-1.2.1335-amd64.deb

# gitkkraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

# sublime merge
wget https://download.sublimetext.com/sublime-merge_build-1107_amd64.deb
sudo dpkg -i sublime-merge_build-1107_amd64.deb
rm sublime-merge_build-1107_amd64.deb

# stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.9/stacer_1.0.9_amd64.deb
sudo dpkg -i stacer_1.0.9_amd64.deb
rm stacer_1.0.9_amd64.deb

## fix broken
sudo apt clean && sudo apt update
sudo dpkg --configure -a
sudo apt install -f
sudo apt install -y --fix-broken 

## cleanup apt
sudo apt autoremove -y
sudo apt autoclean -y
