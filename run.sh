#!/bin/bash

echo 'start sandbox tests'
docker run --rm -d --name mongo-sandbox \
    -e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
    -e MONGO_INITDB_ROOT_PASSWORD=secret -p 27017:27017 \
    mongo
sleep 12s #change to wait_for
ruby main.rb || true
docker rm -f mongo-sandbox || true
echo 'finish sandbox tests'
