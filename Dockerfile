FROM debian:latest

RUN apt-get install nginx --assume-yes
RUN apt install mysql-server --assume-yes
RUN apt install php-fpm php-mysql --assume-yes
RUN apt-get install zip  --assume-yes
RUN apt-get install mysql-server mysql-client mysql-common --assume-yes

COPY . /app

WORKDIR /app

CMD bash srcs/start.sh