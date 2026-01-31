# Development VM for CI/CD Pipeline deployment
# 
# Usage:
#   vagrant up          - Start the VM
#   vagrant ssh         - Connect to the VM
#   vagrant halt        - Stop the VM
#   vagrant destroy     - Remove the VM

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.define "deployment_vm" do |deployment_vm|
    # Network: accessible at 192.168.56.101
    deployment_vm.vm.network "private_network", ip: "192.168.56.101"
    
    # SSH configuration
    deployment_vm.ssh.username = "vagrant"
    deployment_vm.ssh.private_key_path = "~/.vagrant.d/insecure_private_key"
    deployment_vm.ssh.insert_key = false
    
    # Provision: install dependencies
    deployment_vm.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y openssh-server docker.io python3-pip
      pip3 install docker ansible
      usermod -aG docker vagrant
      mkdir -p /home/vagrant/artifacts
      chown -R vagrant:vagrant /home/vagrant/artifacts
    SHELL
    
    # Resources
    deployment_vm.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"  # Increased for Docker
      vb.cpus = 2
    end
  end
end
