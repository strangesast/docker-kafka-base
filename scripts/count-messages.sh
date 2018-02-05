#!/bin/bash
$KAFKA_HOME/bin/kafka-run-class.sh kafka.tools.GetOffsetShell \
  --broker-list localhost:9092 \
  --topic $1 --time -1 --offsets 1 \
  | awk -F  ":" '{sum += $3} END {print sum}'
