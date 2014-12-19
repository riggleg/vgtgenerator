echo "create database joomla3_zhen CHARACTER SET utf8 COLLATE utf8_general_ci;" | mysql -uroot -pyikes3479
mysql -u root -pyikes3479 joomla3_zhen < /jgenerator3_setup/joomla3_zhen.sql
usermod -a -G www-data vagrant

mkdir -p /var/www/vhosts/
mv /jgenerator3_setup/drhespa.j3.tar.gz /var/www/vhosts
tar -zxvf drhespa.j3.tar.gz
chown -R vagrant:www-data drhespa.j3
export PATH="$PATH:/jgenerator3_setup/.bin"

