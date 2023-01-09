#!/usr/bin/bash

#workaround file, need to be executed in peervpn_package.sh
#create directory, its structure and control file
#need to replace home directory with tilde
mkdir -p /home/ubuntu/peervpn_1.0-1_amd64/
mkdir -p /home/ubuntu/peervpn_1.0-1_amd64/usr/local/bin 
sudo cp /home/ubuntu//peervpn/peervpn /home/ubuntu/peervpn_1.0-1_amd64/usr/local/bin 
mkdir -p /home/ubuntu/peervpn_1.0-1_amd64/DEBIAN
sudo touch /home/ubuntu/peervpn_1.0-1_amd64/DEBIAN/control