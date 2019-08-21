#~/bin/bash
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt update
sudo apt install google-drive-ocamlfuse
sed -i "s/USER_NAME/`whoami`/g" ~/Tools/gfs/gfsmount.service
sudo cp -v ~/Tools/gfs/gfsmount.service /lib/systemd/system/
google-drive-ocamlfuse
