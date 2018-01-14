#! /bin/bash
echo "Adding Universe and Multiverse"
add-apt-repository -y universe
add-apt-repository -y multiverse

echo "Adding chrome repo"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

echo "Adding repo for ubuntu-tweak"
#add-apt-repository ppa:trebelnik-stefina/ubuntu-tweak

echo "Adding repo for sublime text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

echo "Adding repo for variety"
add-apt-repository -r ppa:peterlevi/ppa
add-apt-repository -y ppa:peterlevi/ppa

echo "Updating Cache"
apt-get update
apt-get -y upgrade

echo "Removing apport"
apt-get remove apport

echo "Installing basic utilities"
apt-get install -y google-chrome-stable variety variety-slideshow sublime-text
