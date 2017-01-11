
FROM       ubuntu:16.04
MAINTAINER Marcel mc-b Bernet <marcel.bernet@ch-open.ch>

RUN apt-get update && apt-get install -y redis-server

EXPOSE 6379 
CMD [ "redis-server" ]
