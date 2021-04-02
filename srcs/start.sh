service mysql start
cd /tmp
wget http://wordpress.org/latest.zip
unzip latest.zip -d /var/www
chmod -R 777 /var/www
ln -s /usr/share/phpmyadmin /var/www/wordpress/
cat /app/srcs/nginx-config > /etc/nginx/sites-available/default
nginx -t
/etc/init.d/php7.3-fpm start
