service mysql start
cd /tmp
wget http://wordpress.org/latest.zip
mkdir /var/www/wordpress
unzip latest.zip -d /var/www/wordpress/
chmod -R 777 /var/www
cat /app/srcs/wp-config.php > /var/www/wordpress/wp-config.php
ln -s /usr/share/phpmyadmin /var/www/wordpress/
cat /app/srcs/nginx-config > /etc/nginx/sites-available/default
mkdir /etc/nginx/ssl
chmod 700 /etc/nginx/ssl
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.pem -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=sserbin/CN=localhost"
chmod 777 -R /etc/nginx/ssl
nginx -t
/etc/init.d/nginx start
/etc/init.d/php7.3-fpm start
/etc/init.d/php7.3-fpm reload
