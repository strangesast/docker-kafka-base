FROM java:openjdk-8-jre

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y wget supervisor && \
    apt-get clean

ENV KAFKA_MIRROR http://download.nextag.com/apache/kafka/
ENV SCALA_VERSION 2.11
ENV KAFKA_VERSION 1.0.0
ENV KAFKA_HOME /opt/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION"

ADD get-kafka.sh /tmp/get-kafka.sh

RUN chmod a+x /tmp/get-kafka.sh

RUN /tmp/get-kafka.sh

WORKDIR $KAFKA_HOME
COPY scripts .
RUN chmod a+x *.sh
