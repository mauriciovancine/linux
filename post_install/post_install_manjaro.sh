### script post install manjaro ###

# mauricio vancine
# 30-04-2019

# update repository and system
sudo pacman -Syyu

# install r
sudo pacman -Sy r

# install qgis
sudo pacman -Sy qgis

# install rhythmbox
sudo pacman -Sy rhythmbox

# install rstudio
pamac build -Sy rstudio-desktop

# install grass
pamac build -Sy grass

# install google chrome
pamac build -Sy google-chrome

# install grass
pamac build -Sy grass

# install rstudio
pamac build -Sy rstudio-desktop

# install rstudio
pamac build -Sy rstudio-desktop

# install inkscape
pamac build -Sy inkscape

# install 
 sublime-text-dev\
 wps-office\
 wps-office-extension-portuguese-brazilian-dictionary\
 simplenote-electron-bin

# java
export JAVA_LIBS="$JAVA_LIBS -ldl"
sudo R CMD javareconf
