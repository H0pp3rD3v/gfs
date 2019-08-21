#~/bin/bash
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt update
sudo apt install google-drive-ocamlfuse
sudo cp -v ~/Tools/gfs/gfsmount.service /lib/systemd/system/
