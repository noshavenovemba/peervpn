#!/usr/bin/bash

#install packages for compilation
sudo apt update
sudo apt -y install git-hub make gcc

#add repository for old ssl libs
sudo add-apt-repository -y "deb [trusted=yes] http://security.ubuntu.com/ubuntu bionic-security main"
#echo "deb [trusted=yes] http://security.ubuntu.com/ubuntu bionic-security main" | sudo tee -a /etc/apt/sources.list

#install libraries needed for peervpn
sudo apt update && apt-cache policy libssl1.0-dev
sudo apt -y install libssl1.0-dev zlib1g-dev 

#clone, compile and make peervpn executable
sudo git clone https://github.com/peervpn/peervpn
cd peervpn
sudo make 
sudo chmod +x peervpn