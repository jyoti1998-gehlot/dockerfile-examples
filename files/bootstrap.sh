#!/bin/bash
sudo apt-get update
sudo apt-get install nginx --assume-yes
sudo mkdir /etc/nginx/ssl/
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/selfsigned.key -out /etc/nginx/ssl/selfsigned.crt -subj "/C=IN/ST=Maha/L=Pune/O=Global Security/OU=IT Department/CN=localhost"
sudo unlink /etc/nginx/sites-enabled/default
sudo cp /tmp/site.conf  /etc/nginx/sites-available/
sudo ln -sf /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/
sudo service nginx restart
echo "Nginx is running"
sudo echo "service nginx status" > /opt/cronjob.sh
