if [ $# -eq 0 ]
then
	cat /app/srcs/nginx-config_on > /etc/nginx/sites-available/default
else
	if [ $1 = "on" ]
	then
		cat /app/srcs/nginx-config_on > /etc/nginx/sites-available/default
	else
		cat /app/srcs/nginx-config_off > /etc/nginx/sites-available/default
	fi
fi
/etc/init.d/nginx restart
