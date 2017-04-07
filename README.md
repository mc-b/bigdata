Big Data Umgebung
=================

Umgebung für Kurs [Big Data](https://www.eb-zuerich.ch/angebot/big-data-ueberblick.html) Überblick

Basiert auf 
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

Für Windows wird [Git Bash](https://git-scm.com/) benötigt. **Wichtig:** Git ohne Umwandlung CR/LF Option installieren, bzw. diese nicht aktiveren bei der Installation.

Installation und Verwendung
---------------------------

Obige Produkte installieren (je nach Plattform).


Bash Umgebung starten und Repository clonen

    git clone https://github.com/mc-b/bigdata.git

Umgebung aufsetzen

    cd bigdata 
    vagrant up
    
Die Neo4J und Apache Zepplin Container werden beim Systemstart gestartet und können unter folgenden URL erreicht werden:

* [Neo4J](http://localhost:7474)
* [Apache Zeppelin](http://localhost:7080)

Die weiteren Data Store bzw. Docker Container, je nach Umgebung, starten z.B.:

    vagrant ssh
    /vagrant/mongodb/mongo
	
Mehr Beispiele befinden sind im Verzeichnis `/vagrant`

Dokumentation
-------------

Pro Verzeichnis existiert eine README.md Datei. 

Es wird ein GitBook Container gestartet, welche diese unter [http://localhost:8080](http://localhost:8080) als HTML zur Verfügung stellt.


	
