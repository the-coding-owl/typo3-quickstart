#!/usr/bin/env bash

sudo apt-add-repository ppa:ondrej/php
sudo apt -y update

# configure mysql to install in non-interactive mode
echo "mysql-server mysql-server/root_password password Vagrant" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password Vagrant" | sudo debconf-set-selections

#install php
sudo apt -y install php7.1 php7.1-xml php7.1-zip php7.1-curl php7.1-mbstring php7.1-xdebug php7.1-gd php7.1-mysql php7.1-opcache mysql-server
sudo cp /vagrant/vagrant/xdebug.ini /etc/php/7.1/mods-available/xdebug.ini
sudo phpenmod xdebug

# install and configure apache2
sudo usermod -a -G vagrant www-data
sudo cp /vagrant/vagrant/apache.conf /etc/apache2/sites-available/virtualhost.conf
sudo a2ensite virtualhost
sudo a2dissite 000-default
sudo service apache2 reload

# copy mysql configuration
sudo cp -f /vagrant/vagrant/mysql.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
mysql -u root -pVagrant -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'Vagrant' WITH GRANT OPTION;"
sudo service mysql restart

# composer installation
cd /tmp
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# TYPO3 installation
cd /vagrant
composer install