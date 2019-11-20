#!/bin/bash
# fill in the following parameters before running this script
source config.sh
if [ -z "$email" ]
    then echo "please fill the variables in config.sh before proceeding"

ish="sudo apt -y install"
$ish build-essential
$ish ubuntu-server
$ish nvidia-driver-440
$ish gnome-tweak-tool
$ish onedrive
$ish guake
sudo wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh 
sudo chmod +x ./Anaconda*
bash ~/Anaconda3-2019.10-Linux-x86_64.sh -b -p $HOME/anaconda
source ~/.bashrc 
sudo apt-get -y remove docker docker-engine docker.io containerd runc
sudo apt-get -y update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
$ish docker-ce docker-ce-cli containerd.io
python get_docker.py
$ish chrome-gnome-shell
$ish deepin-gtk-theme
echo "export PATH=~/anaconda/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
conda init
source ~/.bashrc
conda install -y pytorch tensorboard scikit-learn pandas
conda create -y -n py2.7 python=2.7
$ish openssh-server
sudo echo "PasswordAuthentication $ssh_password_auth" >> /etc/ssh/sshd_config
sudo echo "Port $ssh_port" >> /etc/ssh/sshd_config
sudo apt update
$ish apache2
printf "\ny\n$passphrase\n$passphrase\n\n\n"|ssh-keygen -t rsa -b 4096 -C $email
ssh-add ~/.ssh/id_rsa
$ish xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
sudo snap install --classic code
cd /var
chmod a+w /www
cd www
printf "yes"|git clone git@github.com:TimSYQQX/MyWebsite.git
sudo rm -rf html
mv MyWebsite html
cd ~
sudo apt-get update
$i virtualbox
git config --global user.email $email
git config --global user.name $user
sudo apt update
sudo apt -y upgrade
