### script post install manjaro ###

# mauricio vancine
# 03-02-2019

# update repository and system
sudo pacman -Syyu

# install app from repository
sudo pacman -Sy\
 r\
 gcc-fortran\
 qgis\
 rhythmbox\
 spyder3

# install app from yaourt 
yaourt -Sy\
 google-chrome\
 rstudio-desktop-bin\
 openblas-lapack\
 grass\
 inkscape\
 sublime-text-dev\
 wps-office\
 wps-office-extension-portuguese-brazilian-dictionary\
 teamviewer\
 simplenote-electron-bin
 
# install enables
sudo systemctl start teamviewerd
sudo systemctl enable teamviewerd  
