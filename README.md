# DynamoDB
A docker container appliance wrapping DynamoDB Local, for use testing and
developing against Amazon's DynamoDB.

To use it, run the container and connect to port 6060:

docker run -it -p 6060:8000 onsdigital/eq-docker-dynamodb:latest