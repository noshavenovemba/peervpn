#!/usr/bin/bash

mkdir -p /home/ubuntu/peervpn_1.0-1_amd64/
mkdir -p /home/ubuntu/peervpn_1.0-1_amd64/usr/local/bin 
sudo cp /home/ubuntu/peervpn/peervpn /home/ubuntu/peervpn_1.0-1_amd64/usr/local/bin 
mkdir -p /home/ubuntu/peervpn_1.0-1_amd64/DEBIAN
sudo touch /home/ubuntu/peervpn_1.0-1_amd64/DEBIAN/control