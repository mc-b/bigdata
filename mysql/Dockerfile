
FROM       ubuntu:14.04
MAINTAINER Marcel mc-b Bernet <marcel.bernet@ch-open.ch>

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y  mysql-client mysql-server  

EXPOSE 3306
CMD ["mysqld"]
