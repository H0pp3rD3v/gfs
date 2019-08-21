# gfs

Clone this repo to ~/Tools
Adds PPA and Installs Google-Drive-Ocamlfuse
must be run as intended user

run ~/Tools/gfs/setup.sh

    note setup.sh will use Google App Engine Authentication for service based athentication edit the setup.sh before running
    google-drive-ocamlfuse -id 12345678.apps.googleusercontent.com -secret abcde12345

create mountpoints one folder per teamdrive
	
    mkdir ~/Google
    cd ~/Google
    mkdir mydrive TEAMDRIVENAME1 TEAMDRIVENAME2

Custom mountpoints can be used init.sh and die.sh will need to be updated to reflect this.

edit ~/Tools/gfs/init.sh
    
    google-drive-ocamlfuse ~/Google/mydrive
    google-drive-ocamlfuse -label TEAMDRIVENAME ~/Google/TEAMDRIVENAME

edit ~/Tools/gfs/die.sh

    fusermount -u ~/Google/mydrive
    fusermount -u ~/Google/TEAMDRIVENAME

copy ~/.gdfuse/default to ~/.gdfuse/TEAMDRIVENAME

edit ~/.gdfuse/TEAMDRIVENAME/config

    set teamdrive_id= final segment of TeamDrives URI from web browser

enable gfs 

    sudo systemctl enable gfsmount
