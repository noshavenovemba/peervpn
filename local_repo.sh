#!/usr/bin/bash

#build
sudo dpkg-deb --build --root-owner-group /home/ubuntu/peervpn_1.0-1_amd64

#install apache for http repository and dpkg
sudo apt -y install apache2 dpkg-dev
sudo systemctl enable apache2

#create repository structure and enabling packages for amd64
cd /var/www/html/
sudo mkdir -p debs
cd debs
sudo mkdir -p amd64
sudo chmod -R 755 amd64
sudo chown -R ubuntu amd64
sudo cp /home/ubuntu/peervpn_1.0-1_amd64.deb /var/www/html/debs/amd64/peervpn_1.0-1_amd64.deb
sudo dpkg-scanpackages amd64 | gzip -9c > amd64/Packages.gz

#adding local repository to the sources list 
sudo add-apt-repository -y "deb [trusted=yes] http://127.0.0.1/debs amd64/"
sudo apt update