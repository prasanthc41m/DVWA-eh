#!/bin/bash

# set allow_url_include=on
test -f /etc/php.ini && sed -i 's/allow_url_include = Off/allow_url_include = On/g' /etc/php.ini

# restart httpd service
service httpd restart

# create database
mysql -u root -ptoor test -e 'CREATE DATABASE IF NOT EXISTS dvwa'
