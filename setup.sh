#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install zsh neofetch python-pip nala yarn webpack git -y

cd Downloads
sleep 120
sudo apt update
git clone https://github.com/yilozt/mutter-rounded
cd ./mutter-rounded/ubuntu
./package.sh

# Ubuntu 21.10
#sudo dpkg -i libmutter-8-0*.deb mutter-common*.deb

# Ubuntu 22.04
sudo dpkg -i libmutter-10-0*.deb mutter-common*.deb
cd ..

git clone https://github.com/yilozt/mutter-rounded-setting
cd ./mutter-rounded-setting
./install

cd .. 

sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y

wget https://download-cdn.jetbrains.com/python/pycharm-community-2023.3.4.tar.gz
tar -xvzf pycharm-community-2023.3.4.tar.gz
cd pycharm-community-2021.3.2/bin/
chmod u+x pycharm.sh
