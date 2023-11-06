#!/bin/bash

curl https://github.com/NetworkPilgrim/ServerSetup/blob/master/.bashrc > ~/.bashrc

# Install the required dependencies for the motd 
apt install -y figlet lolcat hddtemp

# 
curl -o ~/serversetup.zip https://github.com/NetworkPilgrim/ServerSetup/archive/refs/heads/master.zip

#
unzip ~/serversetup.zip "motd/*" -d "/etc/update-motd.d/"

#
chmod -R o+rx /etc/update-motd.d/