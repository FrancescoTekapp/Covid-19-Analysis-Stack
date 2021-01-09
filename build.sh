#! /bin/bash

# Scarico i CSV

docker stop covid-19-stack && docker rm covid-19-stack
docker stop covid-19-client && docker rm covid-19-client

mkdir -p $pwd/clickhouse_data

docker run -d -p 8123:8123 --name covid-19-stack --ulimit nofile=262144:262144 --volume='clickhouse_data':/var/lib/clickhouse yandex/clickhouse-server

docker run --rm --link covid-19-stack:clickhouse-server --name covid-19-client yandex/clickhouse-client --host clickhouse-server



