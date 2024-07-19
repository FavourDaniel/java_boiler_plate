#!/bin/bash
echo "$SSH_PASSWORD" | sudo -S apt-get install -y openjdk-17-jdk 
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
cd /home/dhee/
sudo nohup java -jar hng-java-boilerplate-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &