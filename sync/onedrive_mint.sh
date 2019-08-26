# script install onedrive mint #

# mauricio vancine
# 07-05-2019

# infortion
# https://github.com/abraunegg/onedrive

# install ---------------------------------------------
sudo apt install -y\
  build-essential\
  libcurl4-openssl-dev\
  libsqlite3-dev

curl -fsS https://dlang.org/install.sh | bash -s dmd

source ~/dlang/dmd-2.087.1/activate # can change - see the output

git clone https://github.com/abraunegg/onedrive.git
cd onedrive
./configure
make clean; make;
sudo make install

deactivate

# use -------------------------------------------------
onedrive

# copy the link from terminal to browser
# copy the link from browser to terminal

# testing your configuration --------------------------
onedrive --synchronize --verbose --dry-run

# show your configuration -----------------------------
onedrive --display-config

# performing a selective directory sync ---------------
onedrive --synchronize --syncdir o/caminho/da/sua/pasta

# end -------------------------------------------------