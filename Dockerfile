FROM monitoringartist/zabbix-3.0-xxl

MAINTAINER uyorum uyorum.pub@gmail.com

ADD https://raw.githubusercontent.com/uyorum/zabbix-alert-slack/master/slack \
  /usr/local/share/zabbix/alertscripts/
RUN chmod +x /usr/local/share/zabbix/alertscripts/slack
COPY api /etc/zabbix/api/uyorum
