#!/bin/bash


#Just in case kill previous copy of mhddos_proxy
pkill -f runner.py
pkill -f ./start.py

# Install git, python3, pip, mhddos_proxy, MHDDoS and updated proxy list.
sudo apt update  -y
sudo apt install python3 python3-pip  -y
# for some virtual cloud systems based on debian (like GC)
sudo apt install git gcc libc-dev libffi-dev libssl-dev python3-dev rustc  -y 
sudo pip install --upgrade pip 

#sudo apt upgrade git -y
#sudo apt install wget -y
#sudo apt upgrade wget -y
#sudo apt upgrade python3 -y
#sudo apt upgrade python3-pip -y
#sudo apt install screen -y
#sudo apt upgrade screen -y
#sudo apt install curl -y
#sudo apt upgrade curl -y



#Install latest version of mhddos_proxy and MHDDoS
cd ~
sudo rm -r mhddos_proxy
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git
cd mhddos_proxy
#git clone https://github.com/MHProDev/MHDDoS.git
python3 -m pip install -r requirements.txt 
#python3 -m pip install -r MHDDoS/requirements.txt
cd ~
