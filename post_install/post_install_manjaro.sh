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

# aur
# install google chrome
pamac build -Sy google-chrome

# install rstudio
pamac build -Sy rstudio-desktop

# install grass
pamac build -Sy grass

# install inkscape
pamac build -Sy inkscape

# install simplenote
pamac build -Sy simplenote-electron-bin

# install sublime text
pamac build -Sy sublime-text-dev

# install gitkraken
pamac build -Sy gitkraken

# install sublime wps-office
pamac build -Sy wps-office ttf-wps-fonts wps-office-extension-portuguese-brazilian-dictionary

# java
export JAVA_LIBS="$JAVA_LIBS -ldl"
sudo R CMD javareconf
