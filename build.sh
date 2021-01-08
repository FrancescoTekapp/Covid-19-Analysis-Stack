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

# 
#data,stato,codice_regione,denominazione_regione,lat,long,ricoverati_con_sintomi,terapia_intensiva,totale_ospedalizzati,isolamento_domiciliare,totale_positivi,variazione_totale_positivi,nuovi_positivi,dimessi_guariti,deceduti,casi_da_sospetto_diagnostico,casi_da_screening,totale_casi,tamponi,casi_testati,note,ingressi_terapia_intensiva,note_test,note_casi

# Pulisco la cartella git-temp
#rm -rf git-temp/*

docker 