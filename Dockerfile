FROM ubuntu:16.04
MAINTAINER Stefan Thoeni <stefan@savvy.ch>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nginx php-fpm php-mysql supervisor ssmtp mailutils

RUN echo "hostname=localhost.localdomain" > /etc/ssmtp/ssmtp.conf
RUN echo "root=stefan@savvy.ch" >> /etc/ssmtp/ssmtp.conf
RUN echo "mailhub=172.17.0.1" >> /etc/ssmtp/ssmtp.conf
RUN echo "localhost localhost.localdomain" >> /etc/hosts

ADD supervisord.conf /etc/supervisord.conf
ADD start.sh /start.sh

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["/start.sh"]

