# Dockerizing MongoDB: Dockerfile for building MongoDB images
# Based on ubuntu:16.04, installs MongoDB following the instructions from:
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/

FROM       ubuntu:16.04
MAINTAINER Marcel mc-b Bernet <marcel.bernet@ch-open.ch>

# Installation:
# Import MongoDB public GPG key AND create a MongoDB list file
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu $(cat /etc/lsb-release | grep DISTRIB_CODENAME | cut -d= -f2)/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Update apt-get sources AND install MongoDB
RUN apt-get update && apt-get install -y mongodb-org curl wget libxml2-utils jq git

# Create the MongoDB data directory
RUN mkdir -p /data/db && chown -R mongodb:mongodb /data/db

# Expose port #27017 from the container to the host
EXPOSE 27017

USER mongodb

# Set /usr/bin/mongod as the dockerized entry-point application
ENTRYPOINT ["/usr/bin/mongod"]

