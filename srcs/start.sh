cd /tmp
wget http://wordpress.org/latest.zip
mkdir /var/www/wordpress
unzip latest.zip -d /var/www/wordpress/
chmod -R 777 /var/www
cat /app/srcs/wp-config.php > /var/www/wordpress/wordpress/wp-config.php
bash /app/srcs/start_nginx.sh on
mkdir /etc/nginx/ssl
chmod 700 /etc/nginx/ssl
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.pem -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=sserbin/CN=localhost"
chmod 777 -R /etc/nginx/ssl
nginx -t
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
mkdir /var/www/wordpress/phpmyadmin
tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz --strip-components 1 -C /var/www/wordpress/phpmyadmin
