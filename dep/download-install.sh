

# install java-11/8, mvn, wget, docker, docker-compose

cd /opt

# download scala-2.12.13 flink-1.12.2
sudo wget https://downloads.lightbend.com/scala/2.12.13/scala-2.12.13.tgz
sudo tar -xvzf scala-2.12.13.tgz

sudo wget https://mirrors.estointernet.in/apache/flink/flink-1.12.2/flink-1.12.2-bin-scala_2.12.tgz
sudo tar -xvzf flink-1.12.2-bin-scala_2.12.tgz

# add this to .bashrc
export SCALA_HOME=/opt/scala-2.12.13
export PATH=$PATH:$SCALA_HOME/bin

export FLINK_HOME=/opt/flink-1.12.2
export PATH=$PATH:$FLINK_HOME/bin

