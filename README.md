# flink-config
Configuration and setup files for deploying Sunbird Data Pipeline Flink Jobs

## Build

### Build inside docker container

To build flink-jobs inside a docker container
- Install docker and docker-compose
- `cd build/` and clone sunbird-data-pipeline (checkout branch release-3.6.0)
- run `install.sh`
- if everything went well there would be a `sunbird-dp-distribution-1.0.tar.gz` file in `build/dist/`

### Build on local machine

Before proceeding install git, wget, java-11/8, maven-3.6, docker, docker-compose.
- download and install flink and scala, see [dep/download-install.sh](dep/download-install.sh)
- `cd build/` and clone sunbird-data-pipeline (branch release-3.6.0), and build flink jobs, see [build-flink-jobs.sh](build-flink-jobs.sh)
- copy `build/sunbird-data-pipeline/data-pipeline-flink/sunbird-dp-distribution/sunbird-dp-distribution-1.0.tar.gz` to `build/dist/`

## Run flink jobs

From root dir (sb-dp-flink-jobs-config) run, `docker-compose up`
