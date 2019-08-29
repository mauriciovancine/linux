# googledrive - rclone - debian derivatives #
# mauricio vancine
# 29-08-2019

# infortion
# https://rclone.org/
# https://github.com/mmozeiko/RcloneBrowser

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
No remotes found - make a new one
n) New remote
r) Rename remote
c) Copy remote
s) Set configuration password
q) Quit config
n/r/c/s/q> n

name> remote

Type of storage to configure.
Choose a number from below, or type in your own value
[snip]
XX / Google Drive
   \ "drive"
[snip]
Storage> drive

Google Application Client Id - leave blank.
client_id>

Google Application Client Secret - leave blank.
client_secret>

Scope that rclone should use when requesting access from drive.
Choose a number from below, or type in your own value
 1 / Full access all files, excluding Application Data Folder.
   \ "drive"
 2 / Read-only access to file metadata and file contents.
   \ "drive.readonly"
   / Access to files created by rclone only.
 3 | These are visible in the drive website.
   | File authorization is revoked when the user deauthorizes the app.
   \ "drive.file"
   / Allows read and write access to the Application Data folder.
 4 | This is not visible in the drive website.
   \ "drive.appfolder"
   / Allows read-only access to file metadata but
 5 | does not allow any access to read or download file content.
   \ "drive.metadata.readonly"
scope> 1

ID of the root folder - leave blank.
root_folder_id> 

Service Account Credentials JSON file path - leave blank.
service_account_file>

Edit advanced config? (y/n)
y) Yes
n) No
y/n> n

Remote config
Use auto config?
 * Say Y if not sure
 * Say N if you are working on a remote or headless machine or Y didn`t work
y) Yes
n) No
y/n> y

If your browser doesn`t open automatically go to the following link: http://127.0.0.1:53682/auth
Log in and authorize rclone for access
Waiting for code...
Got code

Configure this as a team drive?
y) Yes
n) No
y/n> n

--------------------

[remote]
type = drive
scope = drive
service_account_file =
token = {"access_token":"XXX","token_type":"Bearer","refresh_token":"XXX","expiry":"2014-03-16T13:57:58.955387075Z"}

--------------------

y) Yes this is OK
e) Edit this remote
d) Delete this remote
y/e/d> y

Current remotes:

Name                 Type
====                 ====
remote               drive

e) Edit existing remote
n) New remote
d) Delete remote
r) Rename remote
c) Copy remote
s) Set configuration password
q) Quit config
e/n/d/r/c/s/q> q
'

# testing your configuration --------------------------
onedrive --synchronize --verbose --dry-run

# show your configuration -----------------------------
onedrive --display-config

# performing a selective directory sync ---------------
onedrive --synchronize --syncdir o/caminho/da/sua/pasta

# end -------------------------------------------------