# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "mongo/", "/mongo/"
  config.vm.network "public_network"
  config.vm.network "private_network", ip: "192.168.33.11"
  config.vm.network :forwarded_port, guest: 3000, host: 3000, auto_correct: true
  config.vm.network :forwarded_port, guest: 27017, host: 27017, auto_correct: true
  config.vm.network :forwarded_port, guest: 6379, host: 6379, auto_correct: true
  config.vm.host_name = 'mongodbstandalone'
  config.vm.provision "shell", path: "installmongo.sh"
end
