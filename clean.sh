#!/bin/bash

kubectl delete -f ./k8s/test-deployment.yaml
kubectl delete -n rook pool replicapool
kubectl delete storageclass rook-block
kubectl delete -n kube-system secret rook-admin
kubectl delete -n rook cluster rook
kubectl delete -n rook-system daemonset rook-agent
kubectl delete -f ./k8s/rook-operator.yaml
kubectl delete clusterroles rook-agent
kubectl delete clusterrolebindings rook-agent
kubectl delete namespace rook rook-system

echo " dont' forget to rm -rf /var/lib/rook/"
