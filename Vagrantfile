# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
  end


  config.vm.define :vmKokkos do |vmKokkos|
    vmKokkos.vm.box = "bento/ubuntu-20.04"
    vmKokkos.vm.network :private_network, ip: "192.168.100.7"
    vmKokkos.vm.provision "shell", path: "script.sh"
    vmKokkos.vm.hostname = "vmKokkos"
    #vmKokkos.vm.provider "virtualbox" do |v|
    #	v.gui = true
    #	v.cpus = 2
    #	v.memory = 2048
    #end
  end
end
