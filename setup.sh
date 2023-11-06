curl https://github.com/NetworkPilgrim/ServerSetup/blob/master/.bashrc > ~/.bashrc

# Install the required dependencies for the motd 
apt install -y figlet lolcat unzip smartmontools 

curl -o /usr/local/bin/hddtemp-lt https://raw.githubusercontent.com/slowpeek/hddtemp/master/hddtemp-lt

# 
curl -o ~/serversetup.zip https://github.com/NetworkPilgrim/ServerSetup/archive/refs/heads/master.zip

#
unzip ~/serversetup.zip "motd/*" -d "/etc/update-motd.d/"

#
chmod -R o+rx /etc/update-motd.d/