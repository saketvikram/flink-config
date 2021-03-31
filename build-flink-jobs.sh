# install git, java-11/8, mvn, scala-2.12.11, flink-1.12.0, docker, docker-compose

# download
git clone https://github.com/project-sunbird/sunbird-data-pipeline.git
git checkout release-3.7.0


cd sunbird-data-pipeline
# select branch that you want to build
git checkout release-3.7.0


cd data-pipeline-flink
# package all projects, this would take a while the first time around
mvn clean -DskipTests install


cd sunbird-dp-distribution
# package, create tar.gz, create docker image
mvn clean -DskipTests package

