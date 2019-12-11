# googledrive - rclone - debian derivatives #
# mauricio vancine
# 29-08-2019

# infortions
# https://rclone.org/
# https://github.com/mmozeiko/RcloneBrowser
# https://www.techrepublic.com/article/how-to-sync-from-linux-to-google-drive-with-rclone/

# install ---------------------------------------------
# rclone
wget https://downloads.rclone.org/rclone-current-linux-amd64.deb
sudo dpkg -i rclone-current-linux-amd64.deb
rm rclone-current-linux-amd64.deb

# rclone browser
wget https://github.com/mmozeiko/RcloneBrowser/releases/download/1.2/rclone-browser_1.2_amd64.deb
sudo dpkg -i rclone-browser_1.2_amd64.deb
rm rclone-browser_1.2_amd64.deb

# use -------------------------------------------------
rclone config

: '
n/r/c/s/q>                  n       # New
name>                       gdrive  # Gdrive is an example name
Storage>                    13      # Select the number shown for Google Drive 13
client_id>                          # Can be left blank
client_secret>                      # Can be left blank
scope>                      1       # Select your scope
root_folder_id>                     # Can be left blank
service_account_file>               # Can be left blank
edit advanced config>       1       # Advance config
auth_owner_only>                    # Can be left blank
use_trash>                          # Can be left blank
skip_gdocs>                         # Can be left blank
skip_checksum_gphotos>              # Can be left blank
share_with_me>                      # Can be left blank
trashed_only>                       # Can be left blank
export_formats>                     # Can be left blank
import_formats>                     # Can be left blank
allow_import_name_change>           # Can be left blank
use_create_date >                   # Can be left blank
list_chunk>                         # Can be left blank
impersonate>                        # Can be left blank
alternate_export>                   # Can be left blank
upload_cutoff>                      # Can be left blank
chunck_size>                        # Can be left blank
acknowledge_abuse>                  # Can be left blank
keep_revision_forever>              # Can be left blank
size_as_quota>                      # Can be left blank
v2_download_min_size>               # Can be left blank
parcer_min_sleep>                   # Can be left blank
parcer_burst>                       # Can be left blank
server_side_across_configs>         # Can be left blank
disable_http2>                      # Can be left blank
auto config>                y       # auto configuration - will open browser
team drive>                 n       # its a team drive?
y/e/d>                      y       # its ok?
e/n/d/r/c/s/q>              q       # quit config

# show your configuration -----------------------------
rclone config show

# confer ----------------------------------------------
rclone -v --drive-impersonate seu_email@gmail.com lsf gdrive:uma_pasta_qualquer

# testing your configuration --------------------------
rclone sync gdrive: o/caminho/da/sua/pasta -P --dry-run

# sync from drive to folder ---------------------------
rclone sync gdrive: o/caminho/da/sua/pasta -P

# sync from folder to drive ---------------------------
rclone sync o/caminho/da/sua/pasta gdrive: -P

# end -------------------------------------------------
