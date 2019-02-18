#!/bin/bash

cd config-service
docker build -t chanhlv93/m-config-service:v1.0 .

cd ../department-service
docker build -t chanhlv93/m-department-service:v1.0 .

cd ../discovery-service
docker build -t chanhlv93/m-discovery-service:v1.0 .

cd ../employee-service
docker build -t chanhlv93/m-employee-service:v1.0 .

cd ../gateway-service
docker build -t chanhlv93/m-gateway-service:v1.0 .

cd ../organization-service
docker build -t chanhlv93/m-organization-service:v1.0 .

cd ../proxy-service
docker build -t chanhlv93/m-proxy-service:v1.0 .