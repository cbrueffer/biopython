VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"
  config.vm.provision :shell, path: "vmbootstrap.sh"
  config.vm.hostname = "biopython"
  config.vm.network :forwarded_port, guest: 22, host: 44444
end
