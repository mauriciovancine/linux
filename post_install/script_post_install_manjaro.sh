### script post install manjaro ###

# mauricio vancine
# 30-04-2019

# update repository and system
sudo pacman -Syyu

# install app from repository
sudo pacman -S\
 yaourt\
 r\
 gcc-fortran\
 qgis\
 rhythmbox

# install app from yaourt 
yaourt -S\
 rstudio-desktop-bin\
 openblas-lapack\
 udunits\
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

# java
export JAVA_LIBS="$JAVA_LIBS -ldl"
sudo R CMD javareconf
