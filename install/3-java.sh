#!/bin/sh
MAVEN_VERSION=3.6.1
GRADLE_VERSION=5.4

apt-get update
apt-get install default-jdk -y
apt-get install openjdk-8-jdk -y
rm -f /etc/profile.d/java-home.sh
echo "export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'" >> /etc/profile.d/java-home.sh

#Install Apache Maven
cd /opt
wget http://ftp.unicamp.br/pub/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
tar xzf apache-maven-$MAVEN_VERSION-bin.tar.gz
ln -s apache-maven-$MAVEN_VERSION apache-maven
rm -f /etc/profile.d/apache-maven.sh
echo "export M2_HOME=/opt/apache-maven" >> /etc/profile.d/apache-maven.sh
echo "export MAVEN_HOME=/opt/apache-maven" >> /etc/profile.d/apache-maven.sh
echo "export PATH=\${M2_HOME}/bin:\${PATH}" >> /etc/profile.d/apache-maven.sh
rm -f apache-maven-$MAVEN_VERSION-bin.tar.gz

# Install Gradle
mkdir /opt/gradle
cd /opt/gradle
wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip
unzip -d /opt/gradle gradle-$GRADLE_VERSION-bin.zip
rm -f /etc/profile.d/gradle.sh
echo "export PATH=\$PATH:/opt/gradle/gradle-$GRADLE_VERSION/bin" >> rm -f /etc/profile.d/gradle.sh
rm -f gradle-$GRADLE_VERSION-bin.zip
