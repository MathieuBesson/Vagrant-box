#!/bin/bash

apt-get install -y apache2

# Copy the vhost config file
cp /var/www/provision/config/apache/vhosts/helloworld.com.conf /etc/apache2/sites-available/helloworld.com.conf

# Modify hosts file 
cp /var/www/provision/config/apache/hosts /etc/hosts

# Disable the default vhost file
a2dissite 000-default

# Enable our custom vhost file
a2ensite helloworld.com.conf

# Restart for the changes to take effect
service apache2 restart