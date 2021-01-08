#! /bin/bash

# Scarico i CSV

#git clone https://github.com/pcm-dpc/COVID-19.git git-temp/
rm -rf git-temp/.git
docker stop covid19 && docker rm covid19


docker run -d --name covid19 \
-p 11200:3306 \
-v "/$(pwd)/mariadb/data":/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=Tekapp2021 \
-e MYSQL_USER=covid19 \
-e MYSQL_PASSWORD=covid19 \
-e MYSQL_DATABASE=covid19 \
mariadb


# Pulisco la cartella git-temp
#rm -rf git-temp/*

