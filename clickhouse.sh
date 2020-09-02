CLICKHOUSE_HOME=$HOME/clickhouse
CLICKHOUSE_CONFIG=$HOME/clickhouse/config
P_8123=13003
P_9000=13004

mkdir $CLICKHOUSE_HOME/clickhouse
mkdir $CLICKHOUSE_CONFIG/clickhouse/config

docker run -d --name test-click-house --ulimit nofile=262144:262144 --volume=$CLICKHOUSE_HOME:/var/lib/clickhouse -v $CLICKHOUSE_CONFIG/config.xml:/etc/clickhouse-server/config.xml -v $CLICKHOUSE_CONFIG/users.xml:/etc/clickhouse-server/users.xml -p $P_8123:8123 -p $P_9000:9000 yandex/clickhouse-server
