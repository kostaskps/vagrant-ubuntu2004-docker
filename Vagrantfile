# -*- mode: ruby -*-
# vi: set ft=ruby :


ENV['VAGRANT_NO_PARALLEL'] = 'yes'
VAGRANT_BOX         = "generic/ubuntu2004"
VAGRANT_BOX_VERSION = "3.3.0"
NODE_CPUS           = 3
NODE_RAM            = 1536

Vagrant.configure(2) do |config|

  config.vm.box_download_insecure=true
  config.vm.provision "shell", path: "bootstrap.sh"

  # configure virtual machine 
  config.vm.define "ubuntu" do |node|
  
    node.vm.box               = VAGRANT_BOX
    node.vm.box_version       = VAGRANT_BOX_VERSION
    node.vm.box_check_update  = false
    node.vm.hostname          = "ubuntu01"

    # Set IP
    node.vm.network "private_network", ip: "172.18.18.10"
  
    node.vm.provider "virtualbox" do |v|
      v.linked_clone = true
      v.memory  = NODE_RAM
      v.cpus    = NODE_CPUS
      v.name  = "ubuntu01"
    end
  
  end

end
