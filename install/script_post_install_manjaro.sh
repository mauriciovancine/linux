### script post install manjaro ###

# mauricio vancine
# 03-02-2019

# update repository and system
sudo pacman -Syyu

# install app from repository
sudo pacman -S\
 r\
 gcc-fortran\
 qgis\
 rhythmbox\
 spyder3

# install app from yaourt 
yaourt -S\
 google-chrome\
 rstudio-desktop-bin\
 openblas-lapack\
 udunits\
 grass\
 inkscape\
 sublime-text-dev\
 wps-office\
 wps-office-extension-portuguese-brazilian-dictionary\
 teamviewer\
 simplenote-electron-bin\
 etcher
 
# install enables
sudo systemctl start teamviewerd
sudo systemctl enable teamviewerd  

# java
export JAVA_LIBS="$JAVA_LIBS -ldl"
sudo R CMD javareconf
