#!/bin/bash
docker-compose build
docker-compose up -d
docker-compose exec taigaback /usr/src/app/taiga-back/regenerate.sh
docker-compose exec taigafront sed -i 's/:\/\/\/api\/v1\//api\/v1\//g' /taiga/conf.json
