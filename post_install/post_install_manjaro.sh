### script post install manjaro ###

# mauricio vancine
# 30-10-2019

# update repository and system
sudo pacman -Syyu


# packages
# install rhythmbox
sudo pacman -Sy rhythmbox

# install r
sudo pacman -Sy r

# r packages
sudo pacman -Sy gcc # gfortran

# install qgis
sudo pacman -Sy qgis


# aur
# r packages
pamac build udunits # units

# install google chrome
pamac build -Sy google-chrome

# install simplenote
pamac build -Sy simplenote-electron-bin

# install rstudio
pamac build -Sy rstudio-desktop

# r packages
pamac build udunits # sf

# install sublime text
pamac build -Sy sublime-text-dev

# install gitkraken
pamac build -Sy gitkraken

# install grass
pamac build -Sy grass

# install inkscape
pamac build -Sy inkscape

# install wps-office
pamac build -Sy wps-office ttf-wps-fonts wps-office-extension-portuguese-brazilian-dictionary

# java
export JAVA_LIBS="$JAVA_LIBS -ldl"
sudo R CMD javareconf
