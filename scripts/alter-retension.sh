#!/bin/bash
if [ -z "$2" ]
then
  $KAFKA_HOME/bin/kafka-configs.sh \
    --zookeeper localhost:2181 \
    --alter \
    --entity-type topics \
    --entity-name $1 \
    --delete-config retention.ms
else
  $KAFKA_HOME/bin/kafka-configs.sh \
    --zookeeper localhost:2181 \
    --alter \
    --entity-type topics \
    --entity-name $1 \
    --add-config retention.ms=$2
fi
