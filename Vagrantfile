# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "private_network", ip: "192.168.133.10"
    config.vm.hostname = "multiblog.local"

    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true

    config.vm.synced_folder ".", "/var/www/multiblog"
    config.vm.provision "shell", path: "./vagrant/boostrap.sh"
end
