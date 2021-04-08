FROM debian:buster

MAINTAINER Stanley SERBIN <sserbin@student.42.fr>

RUN apt update --assume-yes
RUN apt install nginx --assume-yes
RUN apt install mariadb-server --assume-yes
RUN apt install php-fpm php-mysql --assume-yes
RUN apt install zip --assume-yes
RUN apt install wget --assume-yes

COPY . /app
WORKDIR /app

RUN chmod 777 -R /app
RUN /app/srcs/start.sh

CMD /app/srcs/init.sh
