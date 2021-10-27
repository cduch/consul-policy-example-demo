#!/bin/bash

kubectl get secrets/consul-bootstrap-acl-token --template='{{.data.token | base64decode }}' -n consul