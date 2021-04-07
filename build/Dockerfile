FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# update
RUN apt-get update

# install openjdk-11
RUN apt-get install -y default-jdk

# install maven
RUN apt-get install -y maven

# install wget
RUN apt-get install -y wget

WORKDIR /opt
RUN mkdir -p /opt/scala
RUN mkdir -p /opt/flink

# download and install scala
ENV SCALA_HOME=/opt/scala
ENV PATH=$PATH:$SCALA_HOME/bin
RUN wget https://downloads.lightbend.com/scala/2.12.13/scala-2.12.13.tgz
RUN tar -xvzf scala-2.12.13.tgz -C $SCALA_HOME

# download and install flink
ENV FLINK_HOME=/opt/flink
ENV PATH=$PATH:$FLINK_HOME/bin
RUN wget https://mirrors.estointernet.in/apache/flink/flink-1.12.2/flink-1.12.2-bin-scala_2.12.tgz
RUN tar -xvzf flink-1.12.2-bin-scala_2.12.tgz -C $FLINK_HOME

WORKDIR /src
# mount sunbird
COPY ./sunbird-data-pipeline ./sunbird-data-pipeline

# install individual projects
WORKDIR /src/sunbird-data-pipeline/data-pipeline-flink
RUN --mount=type=cache,target=/root/.m2 mvn clean -DskipTests install

# package projects
WORKDIR /src/sunbird-data-pipeline/data-pipeline-flink/sunbird-dp-distribution
RUN --mount=type=cache,target=/root/.m2 mvn -DskipTests -DskipDockerBuild package

VOLUME /dist

CMD cp ./target/sunbird-dp-distribution-1.0.tar.gz /dist/

