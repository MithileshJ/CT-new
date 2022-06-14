FROM ubuntu:18.04
RUN apt update && apt install apache2 -y 
ADD web.tgz /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"] 
