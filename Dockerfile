FROM debian:stable-slim 

RUN apt update -y && \
    apt install apache2 -y && \
    apt clean 


EXPOSE 80

COPY index.html /var/www/html 
COPY welcome.conf /etc/apache2/site-enabled

VOLUME /var/www/html 

CMD ["apachectl", "-D", "FOREGROUND"]
