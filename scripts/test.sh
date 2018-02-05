#!/bin/bash
while true
do
  /opt/mongodb/bin/mongo dead-simple --eval "printjson(db['streams-plaintext-input'].find().sort({ _id: -1 }).limit(1).toArray())" | tail -n +4
  sleep 0.1
done
