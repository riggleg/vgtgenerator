apt-get install -y php5 libapache2-mod-php5 php5-mcrypt php5-mysql php5-gd

service apache2 restart

#Install Boris
echo "Install Boris"
curl -L -O https://github.com/d11wtq/boris/releases/download/v1.0.8/boris.phar
chmod +x boris.phar
sudo mv boris.phar /usr/local/bin/boris
