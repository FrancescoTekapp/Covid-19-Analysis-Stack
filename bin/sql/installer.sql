/* CREATE TABLE anagrafica-vaccini-summary-latest 

https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/anagrafica-vaccini-summary-latest.csv

*/
CREATE TABLE IF NOT EXISTS ANAGRAFICA_VACCINI(
  fascia_anagrafica VARCHAR(100), 
  totale DECIMAL(10, 2), 
  sesso_maschile DECIMAL(10, 2), 
  sesso_femminile DECIMAL(10, 2), 
  categoria_operatori_sanitari_sociosanitari DECIMAL(10, 2), 
  categoria_personale_non_sanitario DECIMAL(10, 2), 
  categoria_ospiti_rsa DECIMAL(10, 2), 
  ultimo_aggiornamento VARCHAR(100)
);


/* CREATE TABLE consegne-vaccini-latest

https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/consegne-vaccini-latest.csv

*/
CREATE TABLE IF NOT EXISTS CONSEGNE_VACCINI (
  area VARCHAR(100), 
  numero_dosi DECIMAL(10, 2), 
  data_consegna VARCHAR(100)
);

/* CREATE TABLE punti-somministrazione

https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/punti-somministrazione-latest.csv

*/
CREATE TABLE IF NOT EXISTS PUNTI_SOMMINISTRAZIONE (
  area VARCHAR(100), 
  provincia VARCHAR(100), 
  comune VARCHAR(100), 
  presidio_ospedaliero VARCHAR(100)
);

/* CREATE TABLE somministrazioni-vaccini-latest

https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/somministrazioni-vaccini-latest.csv

*/
CREATE TABLE IF NOT EXISTS SOMMINISTRAZIONE_VACCINI (
  data_somministrazione VARCHAR(100), 
  area VARCHAR(100), 
  fascia_anagrafica VARCHAR(100), 
  sesso_maschile DECIMAL(10, 2), 
  sesso_femminile DECIMAL(10, 2), 
  categoria_operatori_sanitari_sociosanitari DECIMAL(10, 2), 
  categoria_personale_non_sanitario DECIMAL(10, 2), 
  categoria_ospiti_rsa DECIMAL(10, 2)
);



/* CREATE TABLE somministrazioni-vaccini-summary-latest

https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/somministrazioni-vaccini-summary-latest.csv

*/
CREATE TABLE IF NOT EXISTS SOMMINISTRAZIONE_VACCINI_SUMMARY(
  data_somministrazione VARCHAR(100), 
  area VARCHAR(100), 
  totale DECIMAL(10, 2), 
  sesso_maschile DECIMAL(10, 2), 
  sesso_femminile DECIMAL(10, 2), 
  categoria_operatori_sanitari_sociosanitari DECIMAL(10, 2), 
  categoria_personale_non_sanitario DECIMAL(10, 2), 
  categoria_ospiti_rsa DECIMAL(10, 2)
);


/* CREATE TABLE vaccini-summary-latest

https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/vaccini-summary-latest.csv

*/
CREATE TABLE IF NOT EXISTS VACCINI (
  area VARCHAR(100), 
  dosi_somministrate DECIMAL(10, 2), 
  dosi_consegnate DECIMAL(10, 2), 
  percentuale_somministrazione DECIMAL(10, 2), 
  ultimo_aggiornamento VARCHAR(100)
);