#!/bin/bash
$KAFKA_HOME/bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic $1
