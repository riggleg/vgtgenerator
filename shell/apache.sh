echo "Installing Apache"
apt-get -y install apache2

a2enmod rewrite
service apache2 restart
