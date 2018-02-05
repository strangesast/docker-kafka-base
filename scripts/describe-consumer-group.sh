#!/bin/sh
$KAFKA_HOME/bin/kafka-run-class.sh kafka.admin.ConsumerGroupCommand --zookeeper localhost:2181 --describe --group $1
