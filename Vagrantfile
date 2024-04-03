Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.hostname = "apache"
  config.vm.define "apache"

  config.vm.synced_folder "http", "/srv/http", owner: "vagrant", group: "vagrant"

  config.vm.provision :shell, path: "setup.sh"
  config.vm.network :forwarded_port, guest: 80, host: 4567
end
