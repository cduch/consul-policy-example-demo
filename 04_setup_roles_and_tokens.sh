#!/bin/bash

export CONSUL_HTTP_TOKEN=`kubectl get secrets/consul-bootstrap-acl-token --template='{{.data.token | base64decode }}' -n consul`

consul acl role create -name "team1" -description "team1 role" -policy-name "team1"
consul acl role create -name "team2" -description "team2 role" -policy-name "team2"
consul acl role create -name "team3" -description "team3 role" -policy-name "team3"

consul acl token create -description "Team1 Admin" -role-name team1
consul acl token create -description "Team2 Admin" -role-name team2
consul acl token create -description "Team3 Admin" -role-name team3