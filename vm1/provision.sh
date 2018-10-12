#!/bin/sh

## This file gets executed the first time you do a `vagrant up`, if you want it to
## run again you'll need run `vagrant provision`

## Bash isn't ideal for provisioning but Ansible/Chef/Puppet 
## are not within the scope of this article

## Install all the things
export DEBIAN_FRONTEND=noninteractive
#apt-get update
#apt-get install --assume-yes php5 php5-mysql php5-cli php5-curl php-apc \
#	apache2 libapache2-mod-php5 mysql-client mysql-server supervisor \
#	vim ntp bzip2 php-pear

sudo dnf update
sudo dnf -y install python3-numpy python3-scipy python3-scikit-learn python3-pandas python3-matplotlib python3-statsmodels


## make www-data use /bin/bash for shell
#chsh -s /bin/bash www-data

## Create a directory structure
## (These would probably already exist within your project)
#mkdir /var/www/24ways/etc
#mkdir /var/www/24ways/code


## Tweak permissions for www-data user
#chgrp www-data /var/log/apache2
#chmod g+w /var/log/apache2
#chown www-data.www-data /var/www/24ways/etc
#chown www-data.www-data /var/www/24ways/code

## Enable Apache's mod-rewrite, if it's not already
#a2enmod rewrite


## Install wp-cli
#curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#mv /home/vagrant/wp-cli.phar /var/www/24ways/wp-cli
#chmod +x /var/www/24ways/wp-cli

  
## siteurl & home are getting /code appended in wp_options, no idea why
#/var/www/24ways/wp-cli option update siteurl 'http://bealers-24ways.dev' \
#	--path=/var/www/24ways/code \
#	--allow-root
