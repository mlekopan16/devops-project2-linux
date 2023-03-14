#!/bin/bash
sudo apt update

#installing apache2
sudo apt install -y apache2

#removing default website
sudo rm -rf /var/www/html

#copying website from host
cp -r /vagrant/html/ /var/www/

#replace the listening port
sudo sed -i 's/80/8081/g' /etc/apache2/ports.conf
sudo sed -i 's/80/8081/g' /etc/apache2/sites-enabled/000-default.conf

#start the apache service and add it to autostart
sudo systemctl stop apache2
sudo systemctl start apache2
sudo systemctl enable apache2