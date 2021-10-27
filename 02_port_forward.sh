#!/bin/bash

kubectl --namespace consul port-forward service/consul-ui 8080:80 --address 0.0.0.0

kubectl --namespace consul port-forward consul-server-0 8500:8500
