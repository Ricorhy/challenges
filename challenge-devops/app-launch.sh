#!/bin/bash

kubectl apply -f postgres-pv.yaml #launch postgres persistent volume to cluster and apply persistent volume claim

kubectl apply -f postgres-config.yaml #launch postgres config changes to cluster

kubectl apply -f postgres-service.yaml #launch postgres service to cluster

bundle exec rails s -p 3000 -b '0.0.0.0' #launch ruby app