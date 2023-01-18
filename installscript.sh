#!/bin/bash

# Update package lists
sudo apt-get update

# Install Ansible dependencies
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

# Install Vagrant
wget https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb
sudo dpkg -i vagrant_2.2.14_x86_64.deb

# Install VirtualBox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian focal contrib"
sudo apt update
sudo apt -y install virtualbox-6.1

# Add user to vboxusers group
sudo usermod -aG vboxusers $(whoami)
sudo apt-get -y install dkms

# Clone the Kube-Vagrant-Ansible repository
git clone https://github.com/ThauMish/Kube-Vagrant-Ansible.git

# Change directory to the repo
cd Kube-Vagrant-Ansible

# Execute the vagrant up command
vagrant up
