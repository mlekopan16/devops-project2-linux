Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  #disable updates checking at startup
  config.vm.box_check_update = false 

  #forwarding VM port 80 to port 8080 on localhost
  config.vm.network "forwarded_port", guest: 80, host: 8080 

  #creating network between host<>VM
  config.vm.network "private_network", ip: "192.168.56.2" 

  #provide more resources for VM
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"


  config.vm.provision "shell", inline: <<-SHELL
    sudo apt update
    sudo apt install -y apache2
    sudo systemctl start 
  SHELL
end
