Vagrant.configure("2") do |config|
  # Use the NixOS box
  config.vm.box = "nixos/nixos"

  # Customize the vm settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
  end

  # Share the current directory with the VM
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  # Provision the VM using Nix
  config.vm.provision "shell", inline: <<-SHELL
    nix-shell --command "python3 /vagrant/your_script.py"
  SHELL
end