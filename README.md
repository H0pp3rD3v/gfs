# gfs

Adds PPA and Installs Google-Drive-Ocaml

run setup.sh
call google-drive-ocaml command
copy ~/.gdfs/default to ~/.dgfs/TEAMDRIVENAME
edit ~/.gdfs/TEAMDRIVENAME/config

    set teamdrive_id= to final segment of TeamDrives Root Folder URI from web browser
    
create mountpoints
mkdir ~/Google
cd ~/Google
mkdir mydrive TEAMDRIVENAME

edit mount-service.conf
    
    google-drive-ocaml ~/Google/mydrive
    google-drive-ocaml -label TEAMDRIVENAME ~/Google/TEAMDRIVENAME
    
run sudo service-update.sh
