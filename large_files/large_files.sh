split -a 5 -b 4294967295 -d --numeric-suffixes=66600 "[NPEB00052] - Mirror's Edge.pkg" "[NPEB00052] - Mirror's Edge.pkg."

split -a 5 -b 4294967295 -d --numeric-suffixes=66600 "Last of Us, The (USA) (En,Fr,Es,Pt).iso" "Last of Us, The (USA) (En,Fr,Es,Pt).iso."


This tutorial is to help intermediate terminal users split files into 4gb parts without using any proprietary software. Just the terminal in Linux (or Mac's?) using the built-in “split” command.

Getting 4gb+ pkg files on a PS3 for installing can be time consuming. Most PS3 owners know that on FAT32 volumes, a single file bigger than 4,294,967,295 bytes won't copy to the volume due to the limits of the FAT32 format. To work around this you can;

(1) Split the file into ~4GB chunks
(2) Transfer the file via FTP to the PS3
(3) Re-format the USB drive to NTFS
PS3's don't natively support NTFS and would require additional setup. Same thing with FTP.

This method uses Linux's built in “split” command to split the file at every 4,294,967,295 bytes, add a 5 digit suffix at the end of each part, and give the suffix a starting number value of 66600. Multiman uses this naming scheme for split files.

To get started, open a terminal and change your current working directory to where the file you want to split is.

$ cd psndlv.3/

Then split the file.

$ split -a 5 -b 4294967295 -d --numeric-suffixes=66600 "[NPEB00052] - Mirror's Edge.pkg" "[NPEB00052] - Mirror's Edge.pkg."

(Please note the last part of the command is the output file name with an added period at the end.)
If all goes well and you didn't fun out of space, you'll have the original file and a few new files "Game.pkg.66600" "Game.pkg.66601" etc. The original can be deleted.

Next, make a new folder named after the file but start it with an underscore "_[NPEB00052] - Mirror's Edge pkg", and move all the parts into the new folder. The underscore indicates that there are files that need to be joined in the folder. The underscore or naming it the same as the package isn't necessary but it's good practice. Also good to put your .rap's in there and DLC in a sub folder to keep everything together.

After the folder is copied to the USB hard drive, safely remove it, then plug it into the PS3 and run MultiMan.

Hold “select” then press “start” to change to the file manager (mmOS), then copy the folder to a directory on the PS3. Multiman will automaticaly join the files into one “Game.pkg” on the ps3. The parts have to be in a folder and the folder itself must be copied. Selecting multiple parts, copying them and pasting them to the ps3 won't merge/join the parts.

Thats it. Sorry for all this extra info but it will better you to know it all.

There are three PS3 game formats. Installable pkg's, ISO's, and extracted ISO's in JB format. 

For ISO's, I'd recommend that the “Game.ISO.66600” “Game.ISO.66601” etc be renamed to “Game.ISO.0” “Game.ISO.1” etc 
and moved to a folder named “PS3ISO” at the root of the USB drive. This way, the games can be played/viewed/copied 
from the Multiman XMB Game column with cover art before copying. Multiman's file browser (mmOS) doesn't join Game.ISO.0 
files when copied. Only in the Multiman XMB.

Some packages from psndl.net are in parts already but are still too large to copy to a FAT32 partition. A good example being “Beyond Two Souls”. The 7 packages need to be downloaded, joined using the command

$ cat \[NPEA00513\]\ \ -\ Beyond\ Two\ Souls\ -\ Part\ 0* > \[NPEA00513\]\ \ -\ Beyond\ Two\ Souls.pkg

Then split

$ split -a 5 -b 4294967295 -d --numeric-suffixes=66600 "[NPEA00513] - Beyond Two Souls.pkg" "[NPEA00513] - Beyond Two Souls.pkg."

Copied to the external USB HDD, then copied to the ps3 which joins them into one package, and lastly installed.

In case you'd want to combine the parts back into one package on your computer use the "cat" command

$ cat \[NPEB00052\]\ \ -\ Mirror\'s\ Edge.pkg.666* > \[NPEB00052\]\ \ -\ Mirror\'s\ Edge.pkg 