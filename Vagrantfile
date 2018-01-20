unless Vagrant.has_plugin?("vagrant-sshfs")
  raise 'The Plugin vagrant-sshfs must be installed!'
end

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.synced_folder ".", "/vagrant", type: "sshfs"
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 33060
  config.vm.provision :shell, path: "scripts/mashine-bootstrap.sh"
  config.vm.provision :shell, path: "scripts/composer-bootstrap.sh"
end
