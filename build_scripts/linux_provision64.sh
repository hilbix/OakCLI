#!/bin/bash
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential
sudo npm install -g nexe
cd /vagrant
source ./version.txt
npm install
mkdir -p builds/linux64/$VERSION
nexe -i ./oak.js -o ./builds/linux64/$VERSION/oak
chmod 0777 ./builds/linux64/$VERSION/oak
tar -zcvf ./builds/oak-$VERSION-linux64.tar.gz ./builds/linux64/$VERSION

