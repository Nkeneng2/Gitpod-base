FROM gitpod/workspace-mysql

USER root


COPY etc/apache2/apache2.conf /etc/apache2/apache2.conf
COPY etc/php/30-php.ini /etc/php/7.4/apache2/conf.d/30-php.ini
