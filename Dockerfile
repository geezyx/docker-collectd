FROM geezyx/ruby-nodejs

ENV DEBIAN_FRONTEND noninteractive
ENV COLLECTD_CONF_PATH /etc/collectd

RUN apt-get -y update
RUN apt-get -y install collectd

ADD mibs /usr/share/snmp/mibs
ADD collectd.conf.erb $COLLECTD_CONF_PATH/collectd.conf.erb

ADD envtemplate.rb /usr/bin/envtemplate.rb
RUN chmod +x /usr/bin/envtemplate.rb
ADD start_container /usr/bin/start_container
RUN chmod +x /usr/bin/start_container
CMD start_container
