FROM debian:latest

RUN apt-get install nginx -yq
RUN apt install mysql-server -yq
RUN apt install php-fpm php-mysql -yq
RUN apt-get install zip  -yq
RUN apt-get install mysql-server mysql-client mysql-common -yq

COPY . /app

WORKDIR /app

CMD bash srcs/start.sh