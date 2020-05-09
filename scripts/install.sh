#!/bin/bash
#
#	Installationsscript modtec

# IoT Umgebung 
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/iot/mosquitto.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/iot/nodered-kafka.yaml

# Messaging Umgebung (MQTT - Kafka Bridge neu mit Node-RED)
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/kafka/zookeeper.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/kafka/kafka.yaml
# kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/kafka/mqtt-kafka-bridge.yaml

# Kafka Streams 
kubectl apply -f https://raw.githubusercontent.com/mc-b/iot.kafka/master/iot-kafka-alert.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/iot.kafka/master/iot-kafka-consumer.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/iot.kafka/master/iot-kafka-pipe.yaml

# Big Data Umgebung
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/mysql/mysql.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/bigdata/redis.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/bigdata/mongodb.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/bigdata/neo4j.yaml
kubectl apply -f https://raw.githubusercontent.com/mc-b/duk/master/bigdata/cassandra.yaml
