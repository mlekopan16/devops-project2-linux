Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  #disable updates checking at startup
  config.vm.box_check_update = false 

  #forwarding VM port 8081 to port 8081 on localhost
  config.vm.network "forwarded_port", guest: 8081, host: 8081

  #provide more resources for VM
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end

  #injecting install-apache.sh script into VM
  config.vm.provision :shell, path: "install-apache.sh"
end
