# update system
sudo dnf -y update && sudo dnf -y autoremove

# git
dnf install -y git

# install tweeaks
sudo dnf install -y gnome-tweak-tool

# theme
sudo dnf install -y materia-gtk-theme

# icons
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:snwh:paper/Fedora_25/home:snwh:paper.repo
sudo dnf install -y paper-icon-theme

# inkskape
sudo dnf install -y inkscape

# sublime
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text

# flameshot
sudo dnf install -y flameshot

# chrome
sudo dnf install -y liberation-fonts
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo rpm -i google-chrome-stable_current_x86_64.rpm
rm google-chrome-stable_current_x86_64.rpm

# java
wget -c https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242979_a4634525489241b9a9e1aa73d9e118e6
mv AutoDL?BundleId=242979_a4634525489241b9a9e1aa73d9e118e6 jre-8u261-linux-x64.rpm
sudo rpm -i jre-8u261-linux-x64.rpm
rm jre-8u261-linux-x64.rpm

# install r
sudo dnf install -y R

sudo dnf install -y udunits2-devel
sudo dnf install -y libproj
sudo dnf install -y gdal-devel
sudo dnf install -y proj-devel
sudo dnf install -y sqlite-devel
sudo dnf install -y geos-devel

sudo R CMD javareconf

# rstudio
wget -c https://download1.rstudio.org/desktop/centos8/x86_64/rstudio-1.3.1093-x86_64.rpm &&
sudo rpm -i rstudio-1.3.1093-x86_64.rpm
rm rstudio-1.3.1093-x86_64.rpm

# qgis
sudo dnf copr enable dani/qgis
sudo dnf install -y qgis python3-qgis qgis-grass qgis-server

# grass gis
sudo dnf install -y grass grass-gui
