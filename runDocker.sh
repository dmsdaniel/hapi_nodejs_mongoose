#!/bin/bash

docker pull mongo

#limpa container antigos
docker stop node-hapijs
docker container rm node-hapijs

#gera container
docker run --name node-hapijs -p 27017:27017 -d mongo