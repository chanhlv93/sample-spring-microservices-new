#!/bin/bash

echo "create docker network..."
docker network create bridge-network

echo "run config service"
docker run -d --name config --network bridge-network -p 8088:8088 chanhlv93/m-config-service:v1.0

echo "run discovery service"
docker run -d --name discovery --network bridge-network -p 8061:8061 chanhlv93/m-discovery-service:v1.0

echo "run gateway service"
docker run -d --name gateway --network bridge-network -p 8060:8060 chanhlv93/m-gateway-service:v1.0

echo "run proxy service"
docker run -d --name proxy --network bridge-network chanhlv93/m-proxy-service:v1.0

echo "run organization service"
docker run -d --name organization-service --network bridge-network -p 8092:8092 chanhlv93/m-organization-service:v1.0

echo "run department service"
docker run -d --name department-service --network bridge-network -p 8091:8091 chanhlv93/m-department-service:v1.0

echo "run employee service"
docker run -d --name employee-service --network bridge-network -p 8090:8090 chanhlv93/m-employee-service:v1.0

echo "DONE"