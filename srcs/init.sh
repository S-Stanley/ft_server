/etc/init.d/php7.3-fpm start
/etc/init.d/nginx start
/etc/init.d/mysql start
if [ $AUTOINDEX = "" ]
	then
	bash /app/srcs/start_nginx.sh on
else
	if [ $AUTOINDEX = 'on' ]
	then
		bash /app/srcs/start_nginx.sh on
	else
		bash /app/srcs/start_nginx.sh off
	fi
fi

echo "create database wordpress; create user wordpressuser; set password for wordpressuser = PASSWORD('user42'); GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser@localhost IDENTIFIED by 'user42';" | mysql
sleep infinity
