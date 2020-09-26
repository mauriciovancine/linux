# update system
sudo dnf update && sudo dnf autoremove

# install tweeaks
sudo dnf install gnome-tweak-tool

# theme
sudo dnf install -y materia-gtk-theme

# icons
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:snwh:paper/Fedora_25/home:snwh:paper.repo
sudo dnf install paper-icon-theme

# install r
sudo dnf install R

# inkskape
sudo dnf install -y inkscape

# sublime
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text

# rstudio
wget -c https://download1.rstudio.org/desktop/centos8/x86_64/rstudio-1.3.1093-x86_64.rpm &&
sudo rpm -i rstudio-1.3.1093-x86_64.rpm
rm rstudio-1.3.1093-x86_64.rpm

