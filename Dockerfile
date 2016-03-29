FROM geezyx/ruby-nodejs

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install collectd

ADD mibs.tar.gz /mibs.tar.gz
RUN tar -zxvf /mibs.tar.gz -C /usr/share/snmp/
RUN rm /mibs.tar.gz

ADD start_container /usr/bin/start_container
RUN chmod +x /usr/bin/start_container
CMD start_container
