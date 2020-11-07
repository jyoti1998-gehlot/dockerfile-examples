#!/bin/sh
ruby -e "$(curl -fsSLk https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
vagrant box add precise64 http://files.vagrantup.com/precise64.box
vagrant init precise64
vagrant up
vagrant ssh
sudo apt-get update
sudo apt-get install nginx
sudo service nginx start
sudo service nginx status

