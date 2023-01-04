#!/bin/bash
sudo apt update

#installing apache2
sudo apt install -y apache2

#removing default website
sudo rm -rf /var/www/html

#copying website from host
cp -r /vagrant/html/ /var/www/

#start the apache service and add it to autostart
sudo systemctl start apache2
sudo systemctl enable apache2