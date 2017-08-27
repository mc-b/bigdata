# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/xenial64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # neo4J Port
  config.vm.network "forwarded_port", guest: 7474, host: 7474, auto_correct: false
  # Zeppelin
  config.vm.network "forwarded_port", guest: 8080, host: 7080, auto_correct: false
  # Apache Server mit Doku
  config.vm.network "forwarded_port", guest: 4000, host: 8080, auto_correct: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = false
     #
     # Customize the amount of memory on the VM:
     vb.memory = "2048"
   end

  # provisioning shell script: jq Utiltities 
   config.vm.provision "shell", inline: <<-SHELL
  	sudo apt-get update
  	sudo apt-get install -y libxml2-utils 
SHELL

  # Docker Provisioner
   config.vm.provision "docker" do |d|
     d.build_image "/vagrant/gitbook", args: "--tag gitbook"
     d.build_image "/vagrant/mysql", args: "--tag mysql"     
     d.build_image "/vagrant/redis", args: "--tag redis"
     d.build_image "/vagrant/mongodb", args: "--tag mongodb"
     d.build_image "/vagrant/spark", args: "--tag spark"
     d.pull_images "neo4j:3.0"
     d.pull_images "aquila/zeppelin"
     d.pull_images "cassandra"
     d.pull_images "jplock/zookeeper"
     d.pull_images "ches/kafka"
     d.run "gitbook", image: "gitbook", args: "-p 4000:4000 -v /vagrant:/srv/gitbook"
     d.run "zeppelin01", image: "aquila/zeppelin", args: "-p 8080:8080"
     d.run "neo4j01", image: "neo4j:3.0", args: "-p 7474:7474"
   end
   
end
