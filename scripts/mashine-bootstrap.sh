#!/usr/bin/env bash

sudo apt-add-repository ppa:ondrej/php
sudo apt -y update
sudo apt y upgrade

# configure mysql to install in non-interactive mode
echo "mysql-server mysql-server/root_password password Vagrant" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password Vagrant" | sudo debconf-set-selections

#install php
sudo apt -y install php7.1 php7.1-xml php7.1-zip php7.1-curl php7.1-mbstring php7.1-xdebug php7.1-gd php7.1-mysql php7.1-opcache mysql-server
sudo cp /vagrant/scripts/xdebug.ini /etc/php/7.1/mods-available/xdebug.ini
sudo phpenmod xdebug

# install and configure apache2
sudo usermod -a -G vagrant www-data
sudo cp /vagrant/scripts/apache.conf /etc/apache2/sites-available/virtualhost.conf
sudo a2ensite virtualhost
sudo a2dissite 000-default
sudo service apache2 reload

# copy mysql configuration
sudo cp -f /vagrant/scripts/mysql.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
mysql -u root -pVagrant -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'Vagrant' WITH GRANT OPTION;"
sudo service mysql restart
