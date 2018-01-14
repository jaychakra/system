#! /bin/bash

echo "Adding PPA"
add-apt-repository ppa:ondrej/php

echo "Updating Cache"
apt-get update

echo "Installing LAMP with PHPMyadmin"
apt-get -y install apache2 php7.1 mysql-server phpmyadmin  php7.1-curl php7.1-json php7.1-mysql php7.1-mbstring
