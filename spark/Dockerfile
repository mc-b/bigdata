FROM       ubuntu:16.04
MAINTAINER Marcel mc-b Bernet <marcel.bernet@ch-open.ch>

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y openjdk-8-jre-headless git curl wget netcat default-jdk maven

RUN wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz && \
	tar xvzf spark-2.1.0-bin-hadoop2.7.tgz
	
WORKDIR spark-2.1.0-bin-hadoop2.7

RUN git clone https://github.com/caroljmcdonald/sparkmldecisiontree.git
RUN git clone https://github.com/databricks/learning-spark