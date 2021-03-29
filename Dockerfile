FROM debian:latest

RUN apt-get update -yq
RUN apt-get install wordpress -yq
RUN apt-get install nginx --assume-yes

COPY . /app

WORKDIR /app

CMD bash srcs/start.sh