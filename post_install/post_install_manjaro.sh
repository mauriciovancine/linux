### script post install manjaro ###

# mauricio vancine
# 30-10-2019

# update repository and system
sudo pacman -Syyu


# packages
# install chromium
sudo pacman -Sy chromium

# install rhythmbox
sudo pacman -Sy rhythmbox

# install r
sudo pacman -Sy r

# r packages
sudo pacman -Sy gcc # gfortran
sudo pacman -S jdk8-openjdk # java
sudo R CMD javareconf # java

# install inkscape
sudo pacman -Sy inkscape

# install gimp
sudo pacman -Sy gimp

# install speedtest-cli
sudo pacman -Sy speedtest-cli


# aur
# r packages
pamac install udunits # units

# install google chrome
pamac install google-chrome

# install simplenote
pamac install simplenote-electron-bin

# install rstudio
pamac install rstudio-desktop

# r packages
pamac install udunits # sf

# install sublime text
pamac install sublime-text-dev

# install gitkraken
pamac install gitkraken

# install qgis
pamac install qgis-ltr

# python for qgis
sudo pacman -Sy python-pyaml python-psycopg2 python-owslib python-pygments
pamac install python-pyjade

# install grass
pamac install grass

# install wps-office
pamac install wps-office ttf-wps-fonts wps-office-extension-portuguese-brazilian-dictionary

# install slack-desktop
pamac install slack-desktop

# install whatsapp
pamac install whatsapp-nativefier

# install etcher
pamac install balena-etcher



# ----------------------------------------------------------------------

# aur
# r packages
pamac build udunits # units

# install google chrome
pamac build google-chrome

# install simplenote
pamac build simplenote-electron-bin

# install rstudio
pamac build rstudio-desktop

# r packages
pamac build udunits # sf

# install sublime text
pamac build sublime-text-dev

# install gitkraken
pamac build gitkraken

# install qgis
pamac build qgis-ltr

# python for qgis
sudo pacman -Sy python-pyaml python-psycopg2 python-owslib python-pygments
pamac build python-pyjade

# install grass
pamac build grass

# install wps-office
pamac build wps-office ttf-wps-fonts wps-office-extension-portuguese-brazilian-dictionary

# install slack-desktop
pamac build slack-desktop

# install whatsapp
pamac build whatsapp-nativefier

# install etcher
pamac build balena-etcher
