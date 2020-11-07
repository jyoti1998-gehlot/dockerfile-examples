# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 443, host: 8090
  config.vm.provision "file", source: "files/site.conf", destination: "/tmp/site.conf"
  config.vm.provision "shell", path: "files/bootstrap.sh"
  config.vm.provision "shell", path: "files/cron.sh"

end
