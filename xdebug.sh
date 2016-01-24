apt-get update -y
apt-get install php5-dev -y
mkdir /home/vagrant/.xdebug
cd /home/vagrant/.xdebug
wget http://xdebug.org/files/xdebug-2.4.0rc3.tgz
tar -xvzf xdebug-2.4.0rc3.tgz
cd /home/vagrant/.xdebug/xdebug-2.4.0RC3
phpize
./configure
make 
cp modules/xdebug.so /usr/lib/php5/20131226
echo "[xdebug]" >> /etc/php5/apache2/php.ini
echo "zend_extension = /usr/lib/php5/20131226/xdebug.so" >> /etc/php5/apache2/php.ini
echo "xdebug.remote_enable = 1" >> /etc/php5/apache2/php.ini
echo "xdebug.remote_host = localhost" >> /etc/php5/apache2/php.ini
echo "xdebug.remote_handler = dbgp" >> /etc/php5/apache2/php.ini
echo "xdebug.remote_port = 9000" >> /etc/php5/apache2/php.ini 
echo "xdebug.var_display_max_children = 1024" >> /etc/php5/apache2/php.ini
echo "xdebug.var_display_max_data = 2048" >> /etc/php5/apache2/php.ini
echo "xdebug.var_display_max_depth = 30" >> /etc/php5/apache2/php.ini
echo "xdebug.remote_connect_back = on" >> /etc/php5/apache2/php.ini
echo "xdebug.idekey = vagrant" >> /etc/php5/apache2/php.ini
apache2ctl restart
