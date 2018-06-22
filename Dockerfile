
FROM ubuntu:16.04
MAINTAINER hardeep
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
