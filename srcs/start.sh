apt-get install mysql-server mysql-client mysql-common
sudo service mysql start
sudo apt install php-fpm php-mysql
sudo apt install nginx
sudo apt-get install zip
cd /tmp
wget http://wordpress.org/latest.zip
sudo unzip latest.zip -d /var/www
sudo chmod -R 777 /var/www
sudo chown -R user42:user42 /var/www/wordpress
sudo ln -s /usr/share/phpmyadmin /var/www/wordpress/
cat nginx-config > /etc/nginx/sites-available/default
nginx -t
sudo services nginx reload