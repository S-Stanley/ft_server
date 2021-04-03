/etc/init.d/php7.3-fpm start
/etc/init.d/nginx start
/etc/init.d/mysql start
echo "create database wordpress; create user wordpressuser; set password for wordpressuser = PASSWORD('user42'); GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser@localhost IDENTIFIED by 'user42';" | mysql
sleep infinity
