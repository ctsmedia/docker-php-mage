# Name ctsmedia/mage-php
# Change version to create differen tags like for php5
#FROM ctsmedia/baseimage-web-php:5.6-fpm
#FROM ctsmedia/baseimage-web-php:7.1-fpm
FROM ctsmedia/baseimage-web-php:7.2-fpm

MAINTAINER ctsmedia <info@cts-media.eu>

# Install magerun
RUN wget https://files.magerun.net/n98-magerun.phar \
    && chmod +x ./n98-magerun.phar \
    && mv n98-magerun.phar /usr/local/bin/magerun

COPY config/bashrc /etc/bash.bashrc
RUN chmod 644 /etc/bash.bashrc
