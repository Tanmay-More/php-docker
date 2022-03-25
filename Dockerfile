FROM ubuntu/apache2
RUN apt update
RUN apt install -y libapache2-mod-php git
RUN mkdir /var/www/html/php
COPY ./php /var/www/html/php
RUN service apache2 restart
