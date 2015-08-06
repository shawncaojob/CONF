# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "testvm"
  config.vm.network :private_network, ip: "192.168.33.99"
  config.vm.network :forwarded_port, guest: 22, host: 2299

  config.vm.define 'ubuntu1404-amd64' do |instance|

    # Every Vagrant virtual environment requires a box to build off of.
    instance.vm.box = 'ubuntu/trusty64'
    instance.vm.provision :shell, 
    :inline => "cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys; userdel ubuntu"
  end
end
