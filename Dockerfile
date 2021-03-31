FROM anandp504/flink:1.12.0-scala_2.12-java11
COPY ./sunbird-data-pipeline/sunbird-dp-distribution/target/sunbird-dp-distribution-1.0.tar.gz /tmp
COPY ./config /config
USER flink
RUN tar -xvf /tmp/sunbird-dp-distribution-1.0.tar.gz -C $FLINK_HOME/lib/
USER root
RUN rm -f /tmp/sunbird-dp-distribution-1.0.tar.gz
USER flink
