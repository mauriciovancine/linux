# googledrive - rclone - debian derivatives #
# mauricio vancine
# 29-08-2019

# infortions
# https://rclone.org/
# https://github.com/mmozeiko/RcloneBrowser
# https://www.techrepublic.com/article/how-to-sync-from-linux-to-google-drive-with-rclone/

# install ---------------------------------------------
# rclone
wget https://downloads.rclone.org/v1.49.1/rclone-v1.49.1-linux-amd64.deb
sudo dpkg -i rclone-v1.49.1-linux-amd64.deb
rm rclone-v1.49.1-linux-amd64.deb

# rclone browser
wget https://github.com/mmozeiko/RcloneBrowser/releases/download/1.2/rclone-browser_1.2_amd64.deb
sudo dpkg -i rclone-browser_1.2_amd64.deb
rm rclone-browser_1.2_amd64.deb

# use -------------------------------------------------
rclone config

: '
n/r/c/s/q> n           # New
name> gdrive           # Gdrive is an example name
Storage> 1             # Select the number shown for Google Drive
client_id>             # Can be left blank
client_secret>         # Can be left blank
scope>                 # Select your scope, 1 for example
root_folder_id>        # Can be left blank
service_account_file>  # Can be left blank
y/n> n                 # Advance config, n
y/n> y                 # Auto config, y
y/n> n                 # team drive, y
y/e/d> y               # its ok?
e/n/d/r/c/s/q> q       # quit config
'

# show your configuration -----------------------------
rclone config show

# testing your configuration --------------------------
rclone sync gdrive: o/caminho/da/sua/pasta -P --dry-run

# sync from drive to folder ---------------------------
rclone sync gdrive: o/caminho/da/sua/pasta -P

# sync from drive to folder ---------------------------
rclone sync o/caminho/da/sua/pasta gdrive: -P

# end -------------------------------------------------