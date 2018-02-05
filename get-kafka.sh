#!/bin/bash
wget -q "$KAFKA_MIRROR""$KAFKA_VERSION"/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz -O /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz && \
tar xfz /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz -C /opt && \
rm /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz
