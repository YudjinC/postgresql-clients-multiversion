#!/usr/bin/env sh
docker build . -t ujinb/postgres-client-multiversion:1.0.0
docker push ujinb/postgres-client-multiversion:1.0.0
