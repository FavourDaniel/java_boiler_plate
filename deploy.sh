#!/bin/bash

cd ~/java_boiler_plate/
# git pull 
./stop-app.sh
mvn dependency:resolve
./mvnw clean install
sudo -S nohup ./mvnw spring-boot:run > app.log 2>&1 &