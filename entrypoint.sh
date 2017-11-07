#!/bin/bash

sh /root/create_tables/submitted_responses.sh & java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
