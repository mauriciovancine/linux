### script post install manjaro ###

# mauricio vancine
# 30-04-2019

# update repository and system
sudo pacman -Syyu

# install app from repository
sudo pacman -Sy\
 r\
 qgis\
 rhythmbox

# install yaourt
# https://www.ostechnix.com/install-yaourt-arch-linux/
sudo pacman -S --needed base-devel git wget yajl

git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd ..

git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si
cd ..
sudo rm -dR yaourt/ package-query/

# install app from yaourt 
# https://www.thekerneltrip.com/manjaro/install-r-studio-manjaro/
yaourt -Sy\
 rstudio-desktop-bin\
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
