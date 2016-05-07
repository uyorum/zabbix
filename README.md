# zabbix-3.0
Customized docker image for Zabbix 3.0

## Customizations
### [uyorum/zabbix-alert-slack](https://github.com/uyorum/zabbix-alert-slack)
* Register the script as a media
* Change `Default message` and `Recovery message` of the pre-configured action (Report problems to Zabbix administrators)

## Usage

Same as [the base image](https://github.com/zabbix/zabbix-community-docker).

``` shell
docker run \
    -d \
    --name zabbix \
    -p 80:80 \
    -p 10051:10051 \
    -v /etc/localtime:/etc/localtime:ro \
    --link zabbix-db:zabbix.db \
    --env="ZS_DBHost=zabbix.db" \
    --env="ZS_DBUser=zabbix" \
    --env="ZS_DBPassword=my_password" \
    uyorum/zabbix-3.0:latest
```
