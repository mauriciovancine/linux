# install rstudio

# links
# https://stackoverflow.com/questions/40413323/rstudio-install-on-ubuntu-16-10-fails-due-to-libgstreamer
# https://mikewilliamson.wordpress.com/2016/11/14/installing-r-studio-on-ubuntu-16-10/

# get rstudio .deb
# https://www.rstudio.org/download/daily/desktop/ubuntu64/
wget https://s3.amazonaws.com/rstudio-dailybuilds/rstudio-1.1.463-amd64.deb

# install dependencies
wget http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_amd64.deb
sudo dpkg -i libgstreamer0.10-0_0.10.36-1.5_amd64.deb
rm libgstreamer0.10-0_0.10.36-1.5_amd64.deb

wget http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
sudo dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
rm libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb

# make sure they don't get over-written at the next software update
sudo apt-mark hold libgstreamer-plugins-base0.10-0
sudo apt-mark hold libgstreamer0.10

# install rstudio
sudo gdebi rstudio-1.1.463-amd64.deb