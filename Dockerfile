FROM zabbix/zabbix-3.0:latest

MAINTAINER uyorum uyorum.pub@gmail.com

ADD https://raw.githubusercontent.com/uyorum/zabbix-alert-slack/master/slack \
  /usr/local/share/zabbix/alertscripts/
COPY files /
RUN chmod +x /usr/local/share/zabbix/alertscripts/slack && \
  sed -i 's/log `import_zabbix_db`/log `import_zabbix_db; mysql -u ${ZS_DBUser} -p${ZS_DBPassword} -h ${ZS_DBHost} -P ${ZS_DBPort} -D ${ZS_DBName} < \/config\/sql\/slack.sql`/g' /config/init/bootstrap.sh
