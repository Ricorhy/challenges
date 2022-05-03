#!/bin/bash

kubectl apply -f postgres-pv.yaml #create postgres persistent volume and apply persistent volume claim

kubectl apply -f postgres-config.yaml #launch postgres config changes 

kubectl apply -f start-app.yaml #deploy k8 containers

kubectl apply -f postgres-service.yaml #launch postgres service to cluster

bundle exec rails s -p 3000 -b '0.0.0.0' #launch ruby app