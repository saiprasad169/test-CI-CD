
FROM ubuntu:16.04
MAINTAINER hardeep
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get clean
COPY index.html /var/www/html/index.html
ADD start.sh /start.sh
CMD ["/bin/bash","/start.sh"]
