curl https://raw.githubusercontent.com/NetworkPilgrim/ServerSetup/master/.bashrc > ~/.bashrc

# Install the required dependencies for the motd 
apt install -y figlet lolcat unzip  

# 
curl -o ~/serversetup.zip https://codeload.github.com/NetworkPilgrim/ServerSetup/zip/refs/heads/master

#
rm -r /etc/update-motd.d/

#
unzip -j ~/serversetup.zip "ServerSetup-master/motd/*" -d "/etc/update-motd.d/"

#
rm ~/serversetup.zip

#
chmod -R +x /etc/update-motd.d/
