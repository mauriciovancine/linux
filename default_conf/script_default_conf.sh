
# reset config
dconf reset -f /org/gnome/

# reset minimize, maximize and close
gsettings set org.gnome.desktop.wm.preferences button-layout :minimize,maximize,close

# reset ctrl + a
gsettings reset org.gnome.desktop.interface gtk-key-theme

