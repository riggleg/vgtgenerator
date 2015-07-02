echo "Running Apt Get Update"
apt-get update -y
echo "Install Curl"
apt-get install curl -y

echo "Install imagemagick imagemagic-dev"
apt-get install imagemagick libmagickwand-dev -y

echo "Installing git"
apt-get install git -y

echo "Install libs needed for nokogiri"
apt-get install libxslt-dev libxml2-dev -y

echo "Install libs for tidy"
apt-get install libtidy-dev tidy -y

echo "Install highlight, like grep but just highlights found words"
apt-get install highlight -y
