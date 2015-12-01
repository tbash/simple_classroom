# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.ssh.forward_agent = true

  config.vm.network "private_network", ip: "33.33.33.11"

  config.vm.synced_folder ".", "/srv/simple_classroom"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = "2"
    vb.memory = "2048"
  end
  config.vm.provision :shell, path: 'tba.sh', keep_color: true
end
