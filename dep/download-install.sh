

# install java-11/8, mvn, wget, docker, docker-compose

cd /opt

wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.3 /opt/maven

sudo vim /etc/profile.d/maven.sh

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}

sudo chmod +x /etc/profile.d/maven.sh

source /etc/profile.d/maven.sh



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

