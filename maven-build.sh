#!/bin/bash

cd config-service
mvn clean package

cd ../department-service
mvn clean package

cd ../discovery-service
mvn clean package

cd ../employee-service
mvn clean package

cd ../gateway-service
mvn clean package

cd ../organization-service
mvn clean package

cd ../proxy-service
mvn clean package