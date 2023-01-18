import subprocess

# Update package lists
subprocess.run(["sudo", "apt-get", "update"])

# Install Ansible dependencies
subprocess.run(["sudo", "apt-get", "-y", "install", "software-properties-common"])
subprocess.run(["sudo", "apt-add-repository", "-y", "ppa:ansible/ansible"])
subprocess.run(["sudo", "apt-get", "update"])
subprocess.run(["sudo", "apt-get", "-y", "install", "ansible"])

# Install Vagrant
subprocess.run(["wget", "https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb"])
subprocess.run(["sudo", "dpkg", "-i", "vagrant_2.2.14_x86_64.deb"])

# Install VirtualBox
subprocess.run(["wget", "https://download.virtualbox.org/virtualbox/6.1.22/virtualbox-6.1_6.1.22-135662~Ubuntu~focal_amd64.deb"])
subprocess.run(["sudo", "dpkg", "-i", "virtualbox-6.1_6.1.22-135662~Ubuntu~focal_amd64.deb"])

# Add user to vboxusers group
subprocess.run(["sudo", "usermod", "-aG", "vboxusers", "username"])

