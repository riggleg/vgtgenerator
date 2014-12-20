echo "create database joomla_standard CHARACTER SET utf8 COLLATE utf8_general_ci;" | mysql -uroot -pyikes3479
mysql -u root -pyikes3479 joomla_standard < /jgenerator1_setup/joomla_standard.sql

sudo usermod -a -G www-data vagrant

sudo mkdir -p /var/www/vhosts/
sudo cp /jgenerator1_setup/standard.dev.tar.gz /var/www/vhosts
sudo tar -zxvf /var/www/vhosts/standard.dev.tar.gz -C /var/www/vhosts

echo "Chowning /var/www/vhosts"
sudo chown -R vagrant:www-data /var/www/vhosts
sudo chmod -R 775 /var/www/vhosts

export PATH="$PATH:/jgenerator1_setup/.bin"

echo 'export PATH="$PATH:/jgenerator1_setup/.bin"' >> ~/.bashrc

source ~/.bashrc

sudo virtualhost create standard.dev vhosts/standard.dev/

#sudo a2ensite drhespa.j3.conf

sudo service apache2 reload

sudo chown -R vagrant:www-data /var/www/vhosts
sudo chmod -R 775 /var/www/vhosts
