# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "DHIS2"

  config.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box"

  config.vm.network "private_network", ip: "192.168.33.20"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  # Install server package
    config.vm.provision :ansible do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "../FreeSHR-Playbooks/bdshr-dhis.yml"
      ansible.inventory_path = "../FreeSHR-Playbooks/vagrant"
      ansible.limit = "all"
    end

  #config.vm.provision "shell",  path: "scripts/provision-local.sh"

end
