#! /bin/bash

echo "Adding PPA"
add-apt-repository ppa:ondrej/php

echo "Updating Cache"
apt-get update

echo "Installing LAMP with PHPMyadmin" 
apt-get -y install apache2 php7.1 mysql-server phpmyadmin  php7.1-curl php7.1-json php7.1-mysql php7.1-mbstring php7.1-mcrypt

echo "Enabling mod-rewrite"
a2enmod rewrite

echo "Reloading Apache2"
systemctl restart apache2

