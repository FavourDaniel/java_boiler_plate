#!/bin/bash

# git pull 
cd ~
./stop-app.sh
cd ~/java_boiler_plate/
mvn dependency:resolve
./mvnw clean install
sudo -S nohup ./mvnw spring-boot:run > app.log 2>&1 &