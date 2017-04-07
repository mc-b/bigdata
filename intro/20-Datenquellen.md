Datenquellen
------------

![OpenData](../images/OpenData.png)

<p style="font-size: 0.5em"><a href="https://opendata.ch/">OpenData</a></p>

---

Daten öffentlich, frei verfügbar und nutzbar zu machen für mehr Transparenz, Innovation und Effizienz — das ist Open Data.

### Weitere

- [Programmable Web](https://www.programmableweb.com/)
- [Stadt Zürich](https://data.stadt-zuerich.ch/)
- [Bundesamt für Statistik](http://data.admin.ch/)
- [Swiss public transport API](http://transport.opendata.ch/)
- [Million Song Dataset](http://labrosa.ee.columbia.edu/millionsong/)
- [United States Department of Transportation](http://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time)

### Beispiele

#### Programmable Web

[Yahoo Wetter API](https://developer.yahoo.com/weather/)

**Aufruf in Test-Umgebung:** 

Testumgebung starten

    cd bigdata
    vagrant up
    vagrant ssh

In der Testumgebung (Linux Bash) folgenden Befehl eingeben um das Wetter abzufragen:

    curl http://query.yahooapis.com/v1/public/yql  \
       -d q="select * from weather.forecast where woeid=784794" -d format=xml | xmllint --format -

Sonnenauf- und Untergang abfragen:

    curl 'http://api.sunrise-sunset.org/json?lat=47.3686498&lng=8.5391825' | python -m json.tool

#### Flugdaten

[United States Department of Transportation](http://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time)

Id und Bezeichnungen aller Airlines abholen

    wget http://www.transtats.bts.gov/Download_Lookup.asp?Lookup=L_AIRLINE_ID -O airlines.csv
    grep -i swiss airlines.csv
    more airlines.csv
	
#### Fahrzeiten
	
[Fahrzeiten der VBZ im SOLL-IST-Vergleich](https://data.stadt-zuerich.ch/dataset/vbz-fahrzeiten-ogd)

Eine Datei im CSV Format downloaden und versuchen mit Microsoft Excel zu öffnen.


Oder in Testumgebung die Anzahl Einträge (pro Woche) anzeigen lassen

    wget https://data.stadt-zuerich.ch/dataset/vbz_fahrzeiten_ogd/resource/8e91e79c-d5e1-4b00-b17f-009456129c33/download/fahrzeitensollist2016072420160730.csv
    wc -l fahrzeitensollist2016072420160730.csv
