#!/bin/bash

sudo apt-get install cups printer-driver-hpcups printer-driver-postscript-hp python python-wxgtk2.8 python-wxtools wx2.8-i18n libwxgtk2.8-dev libgtk2.0-dev
rm -rf ~/pharos && mkdir ~/pharos && pushd ~/pharos
wget -c https://github.com/junaidali/pharos-linux/archive/master.zip && unzip master.zip && rm master.zip && cd pharos-linux-master
wget http://pastebin.com/raw.php?i=UucbVj1V -O- | tr -d '\r' > printers.conf
sed -i -e 's/Please enter your myIIT ID/Please enter your NYU NetID/g' pharospopup
sudo python setup.py
rm -rf ../pharos-linux-master
popd > /dev/null && sudo rm -r ~/pharos
