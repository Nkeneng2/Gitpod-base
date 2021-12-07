FROM gitpod/workspace-mysql

USER root

RUN apt-get update && \
    apt-get -y install \
        mysql-server && \
    mkdir /var/run/mysqld && \
    chown gitpod:gitpod /var/run/mysqld

COPY etc/apache2/apache2.conf /etc/apache2/apache2.conf
COPY etc/mysql/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
COPY etc/php/30-php.ini /etc/php/7.4/apache2/conf.d/30-php.ini