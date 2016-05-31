#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get install nginx -y
sudo chown vagrant:vagrant /var/log/nginx -R
sudo rm -rf /etc/nginx/nginx.conf
sudo cp /var/www/multiblog/vagrant/nginx/nginx.conf /etc/nginx/nginx.conf
sudo cp /var/www/multiblog/vagrant/nginx/sites-enabled/multiblog.local /etc/nginx/sites-enabled/multiblog.local
sudo chown vagrant:vagrant /var/www -R
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php7.0-fpm php7.0-curl php7.0-intl php7.0-mysql php7.0-mbstring php7.0-xml php7.0-json -y
sudo chown vagrant:vagrant /var/log/nginx -R
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server
sudo service nginx restart
sudo rm /etc/php/7.0/fpm/pool.d/www.conf
sudo cp /var/www/multiblog/vagrant/php/7.0/fpm/pool.d/www.conf /etc/php/7.0/fpm/pool.d/www.conf
sudo service php7.0-fpm restart