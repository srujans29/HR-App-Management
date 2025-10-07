FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install mongodb -y 
WORKDIR /var/www/html
COPY . .
EXPOSE 3000
CMD service mongodb start && apachectl -D FOREGROUND