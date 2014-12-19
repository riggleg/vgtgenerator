#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password yikes3479'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password yikes3479'
apt-get update
echo "installing mysql"
apt-get install -y mysql-server libapache2-mod-auth-mysql php5-mysql
apt-get install libmysqlclient-dev -y

mysql_install_db


