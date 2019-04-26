# -*- mode: ruby -*-
# vi: set ft=ruby :

$commonscript = <<-SCRIPT
sudo yum update -y
sudo yum install python2 epel-release -y
sudo yum install python-pip -y
sudo pip install virtualenv 
sudo pip install --upgrade pip
sudo echo "LANG=en_US.utf-8" > /etc/environment
sudo echo "LC_ALL=en_US.utf-8" >> /etc/environment
sudo mkdir -p /home/vagrant/django_lab
sudo chmod 775 /home/vagrant/django_lab
sudo chown vagrant:vagrant /home/vagrant/django_lab
SCRIPT

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
    config.vm.define "django" do |django|
      # Every Vagrant development environment requires a box. You can search for
      # boxes at https://vagrantcloud.com/search.         
         django.vm.box = "centos/7"

         # Memory and CPU allocation
         django.vm.provider "virtualbox" do |v|
            v.memory = 512
            v.cpus = 1
         end
         # Create a forwarded port mapping which allows access to a specific port
         # within the machine from a port on the host machine and only allow access
         # via 127.0.0.1 to disable public access
         config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
         # Host name allocation
         django.vm.hostname = "django.example.com"

         # Installing required packages for ansible controller node
         django.vm.provision "shell", inline: $commonscript
         
         # Share an additional folder to guest VM.  The first argument is the path on the hst to the actual folder. 
         # The Second argument is the path on the guest to mount the floder
         django.vm.synced_folder "django_lab", "/home/vagrant/django_lab",  create: true, type: "virtualbox", rsync__auto: true , owner: "vagrant", group: "vagrant", mount_options:["dmode=775,fmode=777"]
   end
end
