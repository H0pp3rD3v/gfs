# gfs

Clone this repo to ~/Tools

update

Adds PPA and Installs Google-Drive-Ocamlfuse

run ~/Tools/gfs/setup.sh
call google-drive-ocamlfuse command
copy ~/.gdfs/default to ~/.dgfs/TEAMDRIVENAME
edit ~/.gdfs/TEAMDRIVENAME/config

    set teamdrive_id= to final segment of TeamDrives Root Folder URI from web browser
    
create mountpoints
mkdir ~/Google
cd ~/Google
mkdir mydrive TEAMDRIVENAME

edit ~/Tools/gfs/init.sh
    
    google-drive-ocamlfuse ~/Google/mydrive
    google-drive-ocamlfuse -label TEAMDRIVENAME ~/Google/TEAMDRIVENAME

edit ~/Tools/gfs/die.sh

    fusermount -u ~/Google/mydrive
    fusermount -u ~/Google/TEAMDRIVENAME

enable gfs 

    sudo systemctl enable gfsmount
