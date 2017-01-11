Big Data Umgebung
=================

Umgebung für Kurs [Big Data](https://www.eb-zuerich.ch/angebot/big-data-ueberblick.html) Überblick

Basiert auf 
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

Für Windows wird zusätzlich eine sssh Umgebung benötigt, z.B.
* [CygWin](https://www.cygwin.com/)
* [Git Bash](https://git-scm.com/)

Installation und Verwendung
---------------------------

* Obige Produkte installieren (je nach Plattform)
* Bash Umgebung starten und Repository clonen

    git clone https://github.com/mc-b/bigdata.git

* Umgebung aufsetzen

    cd bigdata
    vagrant up

* Mit laufender Umgebung verbinden

    vagrant ssh
	
* Data Store bzw. Docker Container, je nach Umgebung, starten z.B.:

    /vagrant/mongodb/mongo
	
* Die Anderen Umgebungen befinden sind im Verzeichnis `/vagrant`


	
