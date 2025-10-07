FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install apache2 -y
WORKDIR /var/www/html
COPY . .
EXPOSE 3000
CMD apachectl -D FOREGROUND