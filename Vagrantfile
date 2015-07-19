# -*- mode: ruby -*-

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.define "master" do |master|
    master.vm.hostname = "master.instruct.lan"
    master.vm.box = "puppetlabs/centos-7.0-64-puppet"

    master.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--cpus", "2" ]
        v.customize ["modifyvm", :id, "--memory", "1024" ]
    end
    master.vm.network "private_network", ip: "192.168.200.10", :name => "vboxnet0", :adapter => 2
    master.ssh.forward_agent = true
  end

  config.vm.define "node" do |node|
    node.vm.hostname = 'node.instruct.lan'
    node.vm.box = "puppetlabs/centos-7.0-64-puppet"

    node.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--cpus", "1"]
        v.customize ["modifyvm", :id, "--memory", "1024"]
    end
    node.vm.network "private_network", ip: "192.168.200.11", :name => "vboxnet0", :adapter => 2
  end
 
end
