service mysql start
cd /tmp
wget http://wordpress.org/latest.zip
unzip latest.zip -d /var/www
chmod -R 777 /var/www
cat /app/srcs/wp-config.php > /var/www/wordpress/wp-config.php
ln -s /usr/share/phpmyadmin /var/www/wordpress/
cat /app/srcs/nginx-config > /etc/nginx/sites-available/default
nginx -t
/etc/init.d/nginx start
/etc/init.d/php7.3-fpm start
/etc/init.d/php7.3-fpm reload
