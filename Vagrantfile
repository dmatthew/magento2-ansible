# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Setup synced folders so this directory is automatically synced with the /vagrant
  # directory on the vm.
  config.vm.synced_folder ".", "/vagrant", owner: "vagrant", group: "www-data", :mount_options => ["dmode=777","fmode=777"]

  config.vm.network "private_network", ip: "192.168.11.22"

  # Set vm memory and cpus.
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 1
  end

  # Provision the vm using Ansible.
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "ansible/site.yml"
  end
end
