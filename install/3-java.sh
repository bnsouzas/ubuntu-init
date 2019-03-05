#!/bin/sh
apt-get update
apt-get install default-jdk -y
apt-get install openjdk-8-jdk -y
rm -f /etc/profile.d/java-home.sh
echo "export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64/bin/java'" >> /etc/profile.d/java-home.sh