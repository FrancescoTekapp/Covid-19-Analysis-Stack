# Covid-19 Analysis Stack

Sviluppo ambiente analisi flessibile e veloce per analisi Covid-19 (Dati su malattia e distribuzione / erogazione vaccini)

Database: ClickHouse

AI Layer: MindsDB

Hypervisor: Docker 

Per avviare:

``` Shell
chmod a+x build.sh

./build.sh
```

## TODO

    - Importare in maniera automatica i CSV dalla repo -> https://github.com/italia/covid19-opendata-vaccini
    - Importare in maniera automatica i CSV della repo -> https://github.com/pcm-dpc/COVID-19
    - Collegare MindsDB a ClickHouse
    - Verificare se è necessario volume persistente per container Mindsdb
