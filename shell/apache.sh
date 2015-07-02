echo "Installing Apache"
apt-get -y install apache2

a2enmod rewrite
a2enmod expires
service apache2 restart
