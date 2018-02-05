#!/bin/bash
$KAFKA_HOME/bin/kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --topic $1 \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=myapps.TempDeserializer
#--property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer
#--property value.deserializer=org.apache.kafka.common.serialization.FloatDeserializer
