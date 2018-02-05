#!/bin/bash
$KAFKA_HOME/bin/kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --topic $1 \
    --property print.offset=true \
    --property print.timestamp=true \
    --from-beginning
