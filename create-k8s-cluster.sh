 #!/usr/bin/env bash

set -euo pipefail

k3d cluster create islomar-k8s-cluster

#kubectl config set-context islomar-context --cluster=islomar-k8s-cluster && kubectl config use-context islomar-context
#kubectl config current-context

k3d kubeconfig merge islomar-k8s-cluster --kubeconfig-switch-context

kubectl cluster-info

# export KUBECONFIG=/home/isidrolopez/kube/islomar-kubeconfig
#:/home/isidrolopez/.kube/full-kubeconfig.txt

#k3d cluster list
kubectl create namespace argo
#kubectl get ns
kubectl apply -n argo -f https://github.com/argoproj/argo-workflows/releases/download/v3.4.11/install.yaml

# Patch argo server authentication
kubectl patch deployment \
  argo-server \
  --namespace argo \
  --type='json' \
  -p='[{"op": "replace", "path": "/spec/template/spec/containers/0/args", "value": [
  "server",
  "--auth-mode=server"
]}]'

kubectl -n argo port-forward deployment/argo-server 2746:2746

# Submit an example workflow from CLI
# argo submit -n argo --watch https://raw.githubusercontent.com/argoproj/argo-workflows/master/examples/hello-world.yaml

KUBECONFIG=/home/isidrolopez/kube/islomar-kubeconfig argo submit -n argo --watch suspend-argo-workflow.yaml

#k3d cluster delete islomar-k8s-cluster