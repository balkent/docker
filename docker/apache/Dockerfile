FROM httpd:2.4

# ARG DEBIAN_FRONTEND=noninteractive

# #------------------ INSTALL ------------------#

# # DEBIAN
# RUN adduser www-data www-data
# RUN apt-get update
# RUN apt-get upgrade -y
# RUN apt-get install -y sudo dialog apt-utils wget apt-utils

# # APAPCHE 2
# RUN apt-get install -y apache2 libapache2-mod-php

# #------------------ CONFIGURATION ------------------#

# # APAPCHE 2
# RUN rm -rf /etc/apache2/sites-available/000-default.conf
# RUN rm -rf /etc/apache2/sites-enabled/000-default.conf
# COPY ./local.dev.conf /etc/apache2/sites-available/local.dev.conf
# RUN a2ensite local.dev.conf

# WORKDIR /var/www/html

# EXPOSE 80
# ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]