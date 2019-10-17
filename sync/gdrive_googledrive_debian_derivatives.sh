# script sync googledrive - gdrive #

# mauricio vancine
# 07-05-2019

# information
# https://github.com/gdrive-org/gdrive
# https://olivermarshall.net/how-to-upload-a-file-to-google-drive-from-the-command-line/

# install -------------------------------------------------------
wget https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64
chmod +x gdrive-linux-x64
sudo install gdrive-linux-x64 /usr/local/bin/gdrive-linux-x64

# use -----------------------------------------------------------
gdrive about

# copy the link from terminal to browser
# make login
# copy the link from browser to terminal

# configuration -------------------------------------------------
gdrive about

# sync ----------------------------------------------------------
mkdir test
gdrive 

# change user
rm -rf ~/.gdrive

# end -----------------------------------------------------------